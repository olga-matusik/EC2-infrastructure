resource "aws_security_group" "my_privat_sg" {
  name        = "my_privat_sg"
  description = "Allow access of a public instance to the privat one"
  vpc_id      = data.aws_vpc.my_vpc.id

  # INBOUND CONNECTIONS
  ingress {
    description = "Allow SSH into the EC2"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["192.168.1.27/32"]
    #cidr_blocks = [aws_instance.my_public_server.private_ip] ??? would it work here??
  }

  # OUTBOUT CONNECTIONS
  egress {
    description = "Allow access to the world"
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # TCP + UDP
    cidr_blocks = ["0.0.0.0/0"]
  }

}