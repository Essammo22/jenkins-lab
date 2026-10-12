resource "aws_subnet" "public_subnet_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.cidr_block[1]
  availability_zone = var.availability_zone[0]
  tags = {
    Name = var.tag[1]
  }

}
resource "aws_subnet" "private_subnet_1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.cidr_block[2]
  availability_zone = var.availability_zone[0]
  tags = {
    Name = var.tag[2]
  }

}
resource "aws_subnet" "public_subnet_2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.cidr_block[3]
  availability_zone = var.availability_zone[1]
  tags = {
    Name = var.tag[3]
  }

}
resource "aws_subnet" "private_subnet_2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.cidr_block[4]
  availability_zone = var.availability_zone[1]
  tags = {
    Name = var.tag[4]
  }

}