resource "aws_subnet" "sn_public" {
  vpc_id                  = var.vpc_id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-east-1a"
}

output "subnet_id" {
  value = aws_subnet.sn_public.id
  description = "ID da Subnet pública criada"
}

output "subnet_cidr" {
  value = aws_subnet.sn_public.cidr_block
  description = "CIDR da Subnet pública"
}
