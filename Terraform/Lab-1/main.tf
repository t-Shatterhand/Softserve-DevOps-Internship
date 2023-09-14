terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
	region = var.region
}

data "aws_region" "current" {}

resource "aws_vpc" "main" {
	cidr_block       = var.cidr
	instance_tenancy = "default"
 
	tags = {
		environment = var.environment
	}
}
 
resource "aws_internet_gateway" "gateway" {
	vpc_id = aws_vpc.main.id
 
	tags = {
		environment = var.environment
	}
}
 
resource "aws_subnet" "subnet" {
	vpc_id = aws_vpc.main.id
	cidr_block = var.publicCIDR
	availability_zone = var.availability_zone
	map_public_ip_on_launch = true
 
	tags = {
		environment = var.environment
	}
 
}
 
resource "aws_route_table" "table" {
	vpc_id = aws_vpc.main.id
 
	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = aws_internet_gateway.gateway.id
	}
 
	tags = {
		environment = var.environment
	}
}
 
resource "aws_route_table_association" "association" {
	subnet_id      = aws_subnet.subnet.id
	route_table_id = aws_route_table.table.id
}
 
resource "aws_instance" "server" {
	ami           = var.instance_AMI
	instance_type = var.instance_type
	subnet_id     = aws_subnet.subnet.id
	vpc_security_group_ids =  [aws_security_group.default.id]
 
	tags = {
		environment = var.environment,
		Name = var.instance_tag
	}
}

resource "aws_security_group" "default" {
	vpc_id = aws_vpc.main.id

	dynamic "ingress" {
		for_each = toset(var.allowed_ports)
		content {
			cidr_blocks = [aws_vpc.main.cidr_block]
    		from_port   = ingress.value
    		to_port     = ingress.value
    		protocol    = "tcp"
		}
	}

	egress {
    	from_port        = 0
    	to_port          = 0
    	protocol         = "-1"
    	cidr_blocks      = ["0.0.0.0/0"]
	}

	tags = {
		environment = var.environment,
		Name = "Terraform_sec_group"
	}
}