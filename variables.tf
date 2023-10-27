variable "region" {
  description = "AWS region"
  default     = "ap-northeast-1"
}

variable "cluster_name" {
  default = "Tokyo_EKS"
  type    = string
  }