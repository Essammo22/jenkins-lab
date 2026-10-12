resource "aws_eip" "eip" {
  domain = "vpc"

}

resource "aws_nat_gateway" "new_nat" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public_subnet_1.id
  tags = {
    Name = var.tag[6]
  }

}