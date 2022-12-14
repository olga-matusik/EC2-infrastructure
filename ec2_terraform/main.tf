data "aws_ami" "aws_basic_linux" {
  owners      = [var.aws_owner_id] #ami owner
  most_recent = true
  filter {
    name   = "name"
    values = [var.aws_ami_name]
  }
}

data "aws_vpc" "my_vpc" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

data "aws_subnet" "my_public_subnet" {
  filter {
    name   = "tag:Name"
    values = [var.public_subnet_name]
  }
}

data "aws_subnet" "my_privat_subnet" {
  filter {
    name   = "tag:Name"
    values = [var.privat_subnet_name]
  }
}