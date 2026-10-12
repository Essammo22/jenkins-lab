resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block     = var.cidr_block[5]
    nat_gateway_id = aws_nat_gateway.new_nat.id
  }

}
resource "aws_route_table_association" "private_subnet1_rt" {
  subnet_id      = aws_subnet.private_subnet_1.id
  route_table_id = aws_route_table.private_rt.id

}
resource "aws_route_table_association" "private_subnet2_rt" {
  subnet_id      = aws_subnet.private_subnet_2.id
  route_table_id = aws_route_table.private_rt.id

}