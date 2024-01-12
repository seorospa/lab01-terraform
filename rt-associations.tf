resource "aws_route_table_association" "lab01-pub1" {
  subnet_id      = aws_subnet.lab01-public1.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "lab01-pub2" {
  subnet_id      = aws_subnet.lab01-public2.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "lab01-priv1" {
  subnet_id      = aws_subnet.lab01-pivate1.id
  route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "lab01-priv2" {
  subnet_id      = aws_subnet.lab01-private2.id
  route_table_id = aws_route_table.private.id
}
