data "template_file" "user_data" {
  template = file("./scripts/user_data.sh")
}

resource "aws_instance" "instance" {
  ami                    = "ami-0c101f26f147fa7fd"
  instance_type          = "t2.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.sg_id]
  user_data              = base64encode(data.template_file.user_data.rendered)
}

output "instance_id" {
  value = aws_instance.instance.id
  description = "ID da Instância EC2 criada"
}

output "instance_public_ip" {
  value = aws_instance.instance.public_ip
  description = "IP público da instância EC2"
}
