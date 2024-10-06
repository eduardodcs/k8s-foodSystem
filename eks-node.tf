#02 - Criação dos node group
# Cada cluster terá um node group

resource "aws_eks_node_group" "name0_eks-node" {
  cluster_name    = aws_eks_cluster.name0_cluster.name
  node_group_name = "${var.nodeGroup}-2024"
  node_role_arn   = var.labRole
  subnet_ids      = [for subnet in data.aws_subnet.subnet : subnet.id if subnet.availability_zone != "${var.regionDefault}e"]
  disk_size       = 50
  instance_types  = [var.instanceType]

  scaling_config {
    desired_size = 2
    min_size     = 1
    max_size     = 2
  }

  update_config {
    max_unavailable = 1
  }
}