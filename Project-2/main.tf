terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 3.0"
    }
  }

  backend "remote" {
    organization = "self-managed-0"

    workspaces {
      name = "Terraform-101"
    }
  }

  required_version = ">= 0.14.0"

}

provider "aws" {
  region = "us-east-1"
}