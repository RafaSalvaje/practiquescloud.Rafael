terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t3.micro"
}

variable "instance_count" {
  default = 2
}

data "aws_ami" "al2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023*-x86_64"]
  }
}

resource "aws_instance" "ec2_ex1" {
  count         = var.instance_count
  ami           = data.aws_ami.al2023.id
  instance_type = var.instance_type
# Cambiar nombre de las instancias con la variable para saber que se han creado 2 porque sino va a adivinar el nombre ampiterbi
  tags = {
    Name = "PT1-4-Ex1-EC2-${count.index + 1}"
  }
}