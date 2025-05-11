resource "aws_route_table" "rt_public" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.igw_id
  }
}

output "route_table_id" {
  value = aws_route_table.rt_public.id
  description = "ID da Route Table criada"
}
