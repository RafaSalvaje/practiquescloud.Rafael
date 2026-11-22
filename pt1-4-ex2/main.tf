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

variable "az" {
  default = "us-east-1a"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "subnets" {
  type = map(string)
  default = {
    "Subnet-A" = "10.0.32.0/25"
    "Subnet-B" = "10.0.30.0/23"
    "Subnet-C" = "10.0.33.0/28"
  }
}

data "aws_ami" "al2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023*-x86_64"]
  }
}

resource "aws_vpc" "main_vpc" {
  cidr_block = var.vpc_cidr
  tags       = { Name = "VPC-Pt1-4-ex2" }
}

resource "aws_subnet" "subnets" {
  for_each          = var.subnets
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = each.value
  availability_zone = var.az
  tags              = { Name = each.key }
}

resource "aws_instance" "instancia_1_subnet" {
  for_each      = aws_subnet.subnets
  ami           = data.aws_ami.al2023.id
  instance_type = "t3.micro"
  subnet_id     = each.value.id
  tags          = { Name = "${each.key}-1" }
}

resource "aws_instance" "instancia_2_subnet" {
  for_each      = aws_subnet.subnets
  ami           = data.aws_ami.al2023.id
  instance_type = "t3.micro"
  subnet_id     = each.value.id
  tags          = { Name = "${each.key}-2" }
}