resource "aws_internet_gateway" "internet_gt" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = var.tag[5]
  }


}