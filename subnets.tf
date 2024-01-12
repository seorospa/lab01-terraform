resource "aws_subnet" "lab01-public1" {
  vpc_id            = aws_vpc.lab01.id
  availability_zone = "us-east-1a"

  cidr_block = "10.0.0.0/24"
}

resource "aws_subnet" "lab01-public2" {
  vpc_id            = aws_vpc.lab01.id
  availability_zone = "us-east-1b"

  cidr_block = "10.0.1.0/24"
}

resource "aws_subnet" "lab01-pivate1" {
  vpc_id            = aws_vpc.lab01.id
  availability_zone = "us-east-1a"

  cidr_block = "10.0.2.0/24"
}

resource "aws_subnet" "lab01-private2" {
  vpc_id            = aws_vpc.lab01.id
  availability_zone = "us-east-1b"

  cidr_block = "10.0.4.0/24"
}
