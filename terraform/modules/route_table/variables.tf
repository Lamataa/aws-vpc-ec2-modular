variable "vpc_id" {
  description = "ID da VPC associada à tabela de rotas"
  type        = string
}

variable "igw_id" {
  description = "ID do Internet Gateway usado na rota padrão"
  type        = string
}
