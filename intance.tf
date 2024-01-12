resource "aws_security_group" "lab01" {
  vpc_id = aws_vpc.lab01.id

  ingress {
    cidr_blocks = [local.my-ip]
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
  }


  ingress {
    cidr_blocks = [local.my-ip]
    from_port   = var.my-port
    to_port     = var.my-port
    protocol    = "tcp"
  }
}

resource "aws_key_pair" "lab01" {
  key_name   = "lab01-key"
  public_key = file(var.public-key-path)
}

resource "aws_instance" "lab01" {
  subnet_id                   = aws_subnet.lab01-public1.id
  ami                         = "ami-062b1c3c00754c48b"
  instance_type               = "t3a.small"
  associate_public_ip_address = true

  key_name = aws_key_pair.lab01.key_name

  vpc_security_group_ids = [aws_security_group.lab01.id]

  tags = {
    Name = "My EC2 instance"
  }
}
