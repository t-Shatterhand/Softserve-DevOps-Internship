provider "aws" {
    region = var.region
}

data "http" "myip" {
  url = "http://ipv4.icanhazip.com"
}

module "dns" {
    source = "./modules/DNS"

    domain = var.domain
}

module "vpc" {
    source = "terraform-aws-modules/vpc/aws"
    version = "5.1.2"

    name = "my-vpc"
    cidr = "10.0.0.0/16"

    azs             = ["us-east-1a", "us-east-1b"]
    private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
    public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

    enable_nat_gateway = true
    enable_vpn_gateway = false

    enable_dns_hostnames = true
    enable_dns_support   = true

    tags = {
        Name = "testing-vpc-23.10"
        Terraform = "true"
        Environment = var.environment
    }

    private_subnet_tags = {
        "kubernetes.io/role/internal-elb" = "1"
        "kubernetes.io/cluster/${var.eks_name}": "owned"
        
    }
    public_subnet_tags = {
        "kubernetes.io/role/elb" = "1"
        "kubernetes.io/cluster/${var.eks_name}": "owned"
    }
}