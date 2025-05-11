variable "subnet_id" {
  description = "ID da subnet onde a instância será criada"
  type        = string
}

variable "sg_id" {
  description = "ID do security group associado à instância"
  type        = string
}
