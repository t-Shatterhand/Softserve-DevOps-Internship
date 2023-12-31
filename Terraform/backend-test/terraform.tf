terraform {
    required_version = ">= 1.3"
    backend "s3" {
        bucket = "tfstate-dedicated"
        key = "terraform/terraform.tfstate"
        region = "eu-north-1"
        dynamodb_table = "tfstate-dedicated"
        session_name = "terraform"
    }
}