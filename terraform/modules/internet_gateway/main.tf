resource "aws_internet_gateway" "gw" {
  vpc_id = var.vpc_id
}

output "igw_id" {
  value       = aws_internet_gateway.gw.id
  description = "ID do Internet Gateway"
}
