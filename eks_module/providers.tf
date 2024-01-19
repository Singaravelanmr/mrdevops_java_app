terraform {
  backend "s3" {
    bucket                  = "velans-eks-cluster-state-store"
    key                     = "terraform-state"
    region                  = "ap-south-1"
    //shared_credentials_file = "~/.aws/credentials"
    }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}
