output "endpoint" {
  value = aws_eks_cluster.tokyo_EKS.endpoint
  depends_on = [module.eks.name]
}

output "kubeconfig-certificate-authority-data" {
  #value = aws_eks_cluster.tokyo_EKS.certificate_authority[0].data
  value = aws_eks_cluster.tokyo_EKS.certificate_authority[0].data
  depends_on = [aws_eks_cluster.tokyo_EKS.name]
}