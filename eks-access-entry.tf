resource "aws_eks_access_entry" "name0_eks_access_entry" {
  cluster_name      = aws_eks_cluster.name0_cluster.name
  principal_arn     = "${var.principalArn}"
  kubernetes_groups = ["fiap-6-SOAT"]
  type              = "STANDARD"
}