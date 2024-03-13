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
    alias                  = "aws"
    host                   = data.terraform_remote_state.kubernetes.outputs.eks_cluster_endpoint
    cluster_ca_certificate = base64decode(data.terraform_remote_state.kubernetes.outputs.cluster_certificate_authority_data)
    token                  = data.aws_eks_cluster_auth.default.token
    #load_config_file       = false
  }