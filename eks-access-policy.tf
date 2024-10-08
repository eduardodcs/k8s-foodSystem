resource "aws_eks_access_policy_association" "name0-eks-access-policy" {
  cluster_name = aws_eks_cluster.name0_cluster.name
  policy_arn   = "${var.policyArn}"
  principal_arn     = "${var.principalArn}"
  
  access_scope {
    type = "cluster"
  }
}