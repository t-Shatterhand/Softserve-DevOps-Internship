terraform {
    required_version = ">= 1.3"
    backend "s3" {
        bucket = "tfstate-dedicated"
        key = "terraform/testing/terraform.tfstate"
        region = "eu-north-1"
        dynamodb_table = "tfstate-testing"
        session_name = "terraform"
    }

    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = ">= 4.48.0"
        }

        kubernetes = {
            source  = "hashicorp/kubernetes"
            version = ">= 2.16.1"
        }
    }
}

provider "kubernetes" {
    host                   = module.eks.cluster_endpoint
    cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
    exec {
        api_version = "client.authentication.k8s.io/v1beta1"
        command     = "aws"
        args = [
            "eks",
            "get-token",
            "--cluster-name",
            module.eks.cluster_name
        ]
    }
}

provider "helm" {
    kubernetes {
        host                   = module.eks.cluster_endpoint
        cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
        exec {
            api_version = "client.authentication.k8s.io/v1beta1"
            command     = "aws"
            args = [
                "eks",
                "get-token",
                "--cluster-name",
                module.eks.cluster_name
            ]
        }
    }
}