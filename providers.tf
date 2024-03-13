terraform {
  cloud {
    organization = "Satish_Terraform"

    workspaces {
      name = "Terraform_Final_updated"
    }
  }
}

provider "aws" {
  region = var.region
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "my-context"
}