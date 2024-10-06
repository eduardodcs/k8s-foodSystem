#Declaração das variáveis

variable "regionDefault" {
  default = "us-east-1"
}

variable "projectName" {
  default = "eks-fiap"
}

variable "labRole" {
  default = "arn:aws:iam::821324931418:role/LabRole" #No AWS Academy é preciso colocar fixo, não é possível buscar de forma dinamica
}

variable "accessConfig" {
  default = "API_AND_CONFIG_MAP"
}

variable "nodeGroup" {
  default = "fiap"
}

variable "instanceType" {
  default = "t2.micro"
}

variable "principalArn" {
  default = "arn:aws:iam::821324931418:role/voclabs"
}

variable "policyArn" {
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}