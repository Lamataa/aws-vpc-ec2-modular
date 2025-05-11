module "vpc" {
  source = "./modules/vpc"
}

module "subnet" {
  source = "./modules/subnet"
  vpc_id = module.vpc.id  # Correção: module.vpc.id
}

module "internet_gateway" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc.vpc_id  
}

module "route_table" {
  source = "./modules/route_table"
  vpc_id = module.vpc.vpc_id   
  igw_id = module.internet_gateway.igw_id  
}

module "security_group" {
  source = "./modules/security_group"
  vpc_id = module.vpc.id  # Correção: module.vpc.id
}

module "ec2" {
  source = "./modules/ec2"
  subnet_id = module.subnet.subnet_id  
  sg_id = module.security_group.sg_id  
}

output "vpc_id" {
  value = module.vpc.vpc_id
  description = "ID da VPC do módulo VPC"
}

output "subnet_id" {
  value = module.subnet.subnet_id
  description = "ID da Subnet do módulo Subnet"
}

output "sg_id" {
  value = module.security_group.sg_id
  description = "ID do Security Group do módulo Security Group"
}

output "instance_id" {
  value = module.ec2.instance_id
  description = "ID da Instância EC2 do módulo EC2"
}

output "route_table_id" {
  value = module.route_table.route_table_id
  description = "ID da Route Table do módulo Route Table"
}
