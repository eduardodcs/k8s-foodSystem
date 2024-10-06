resource "aws_security_group" "name0_security_group" {
  name        = "SG-${var.projectName}"
  description = "Usado do EKS com 6-SOAT"
  vpc_id      = data.aws_vpc.vpc.id

  #Inbound
  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #Posso declarar várias vezes para liberar em portas ou protocolos diferentes

  #Outbound
  egress {
    description = "All"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"          #todos os protocolos
    cidr_blocks = ["0.0.0.0/0"] #lista de IPs bloqueados - no exemplo, fica liberado para qualquer IP
  }
}