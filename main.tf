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
module "eks" {
  source    = "git@github.com:satishkumarkrishnan/terraform-aws-vpc.git?ref=main"   
}

# TF code for EFS resource
/*resource "aws_eks_cluster" "tokyo_EKS" {
  name     = "Tokyo_EKS"
  role_arn = aws_iam_role.tokyo_IAM_EKS_role.arn

  vpc_config {
    subnet_ids = [module.eks.vpc_fe_subnet.id, module.eks.vpc_be_subnet.id]    
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
  # Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups.
  depends_on = [
   aws_iam_role_policy_attachment.example-AmazonEKSClusterPolicy,    
   aws_iam_role_policy_attachment.example-AmazonEKSVPCResourceController,
  ]
}

# To create IAM role for EKS
resource "aws_iam_role" "tokyo_IAM_EKS_role" {
  name = "tokyo_EKS_role"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "eks.amazonaws.com"
        }
      },
    ]
  })

  tags = {
    tag-key = "Tokyo_EKS_role"
  }
}

#Resource for EKS IAM Role Policy 
resource "aws_iam_role_policy_attachment" "example-AmazonEKSClusterPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
  role       = aws_iam_role.tokyo_IAM_EKS_role.name
}

# Optionally, enable Security Groups for Pods
# Reference: https://docs.aws.amazon.com/eks/latest/userguide/security-groups-for-pods.html
#Resource for EKS IAM Role Policy Attachment
resource "aws_iam_role_policy_attachment" "example-AmazonEKSVPCResourceController" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSVPCResourceController"
  role       = aws_iam_role.tokyo_IAM_EKS_role.name
}*/