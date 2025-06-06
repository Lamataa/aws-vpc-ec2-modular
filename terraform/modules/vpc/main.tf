resource "aws_vpc" "vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = "true"
}

output "id" {
  value = aws_vpc.vpc.id
}

output "vpc_id" {
  value = aws_vpc.vpc.id
  description = "ID da VPC criada"
}

output "vpc_cidr" {
  value = aws_vpc.vpc.cidr_block
  description = "CIDR da VPC"
}