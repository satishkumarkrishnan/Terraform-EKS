terraform {
  required_version = ">= 1.0.0, < 2.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0.0"
    }
  }
}

#To use the VPC module already created
module "rds" {
  source    = "git@github.com:satishkumarkrishnan/terraform-aws-vpc.git?ref=main"   
}

#To use the IAM module already created
module "iam" {
  source    = "git@github.com:satishkumarkrishnan/Terraform_IAM.git?ref=main"
}