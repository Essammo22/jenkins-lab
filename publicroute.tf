resource "aws_route_table" "public-rt" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = var.cidr_block[5]
    gateway_id = aws_internet_gateway.internet_gt.id
  }
  tags = {
    Name = "public_route_table"
  }
}
resource "aws_route_table_association" "public_subnet1_rt" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.public-rt.id
}
resource "aws_route_table_association" "public_subnet2_rt" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.public-rt.id
}