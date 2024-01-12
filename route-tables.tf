resource "aws_internet_gateway" "lab01" {
  vpc_id = aws_vpc.lab01.id
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.lab01.id

  route {
    cidr_block = aws_vpc.lab01.cidr_block
    gateway_id = "local"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.lab01.id

  route {
    cidr_block = aws_vpc.lab01.cidr_block
    gateway_id = "local"
  }

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.lab01.id
  }
}
