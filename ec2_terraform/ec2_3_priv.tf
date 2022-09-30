resource "aws_instance" "my_priv_server_1" {
  ami                    = data.aws_ami.aws_basic_linux.id
  instance_type          = var.ec2_type
  subnet_id              = data.aws_subnet.my_privat_subnet.id
  vpc_security_group_ids = [aws_security_group.my_privat_sg.id]
  key_name               = var.privat_keypair

  tags = {
    Name = "privat_server_1"
  }
}

resource "aws_instance" "my_priv_server_2" {
  ami                    = data.aws_ami.aws_basic_linux.id
  instance_type          = var.ec2_type
  subnet_id              = data.aws_subnet.my_privat_subnet.id
  vpc_security_group_ids = [aws_security_group.my_privat_sg.id]
  key_name               = var.privat_keypair

  tags = {
    Name = "privat_server_2"
  }
}

resource "aws_instance" "my_priv_server_3" {
  ami                    = data.aws_ami.aws_basic_linux.id
  instance_type          = var.ec2_type
  subnet_id              = data.aws_subnet.my_privat_subnet.id
  vpc_security_group_ids = [aws_security_group.my_privat_sg.id]
  key_name               = var.privat_keypair

  tags = {
    Name = "privat_server_3"
  }
}