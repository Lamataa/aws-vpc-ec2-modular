# Projeto: Infraestrutura AWS com EC2 e VPC usando Terraform (Modular)

Este projeto realiza o provisionamento de uma infraestrutura básica na AWS utilizando o Terraform com uma arquitetura modular. A solução implementa uma VPC simplificada e uma instância EC2 com Apache instalado automaticamente via script de user data.

> ✅ Projeto desenvolvido com base nas aulas do professor **Kledson Hugo**, com adaptações e melhorias feitas por **Gabriel Lamata**, incluindo a modularização do código.

---

## 🧱 Estrutura Modular

- **/modules/vpc**: Responsável pela criação da VPC, subnet pública, Internet Gateway, tabela de rotas, Security Group e instância EC2.

---

## 🌐 Recursos Provisionados

- VPC customizada
- Subnet pública
- Internet Gateway
- Tabela de rotas com acesso à internet
- Security Group com liberação da porta 80 (HTTP)
- Instância EC2 Amazon Linux 2 com Apache instalado automaticamente

---

## 📁 Estrutura do Projeto

```bash
/aws-vpc-ec2-modular/
├── main.tf
├── variables.tf
├── outputs.tf
├── modules/
│   └── vpc/
│       ├── vpc.tf
│       ├── subnet.tf
│       ├── internet_gateway.tf
│       ├── route_table.tf
│       ├── security_group.tf
│       └── ec2.tf

```

🚀 Como usar
Clone este repositório:

```bash
git clone https://github.com/Lamataa/aws-vpc-ec2-modular.git
cd aws-vpc-ec2-modular

Execute os comandos Terraform:

terraform init
terraform plan
terraform apply


