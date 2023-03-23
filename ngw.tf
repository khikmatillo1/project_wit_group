resource "aws_eip" "example" {
  vpc = true
}

resource "aws_nat_gateway" "example" {
  subnet_id     = aws_subnet.private1.id
  allocation_id = aws_eip.example.id

  depends_on = [aws_internet_gateway.gw]
}
