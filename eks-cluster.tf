#01 - Criação do cluster

resource "aws_eks_cluster" "name0_cluster" {
  name     = "${var.projectName}-2024" #exemplo para concatenar
  role_arn = var.labRole               #As variáveis também podem colocar direto var.labRole - sem colocar entre aspas e chaves

  vpc_config {
    subnet_ids         = [for subnet in data.aws_subnet.subnet : subnet.id if subnet.availability_zone != "${var.regionDefault}e"]
    security_group_ids = [aws_security_group.name0_security_group.id]
  }

  access_config {
    authentication_mode = var.accessConfig
  }
}