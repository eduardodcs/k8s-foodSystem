#Salvaar arquivo tfstate para realizar o destroy

terraform {
    backend "s3" {
        bucket = "6soat-backend-tf-state"
        key    = "fiap/terraform.tfstate"
        region = "us-east-1" #Não é possível usar a variável porque este é o primeiro arquivo
    }
}