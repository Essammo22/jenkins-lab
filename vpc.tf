resource "aws_subnet" "dev-public-subnet" {
    vpc_id = aws_vpc.dev-vpc.id
    cidr_block = "10.0.1.0/24"
    tags = {
      Name = "dev-public-subnet1"
    }
  
}
resource "aws_subnet" "dev-private-subnet" {
    vpc_id = aws_vpc.dev-vpc.id
    cidr_block = "10.0.2.0/24"
    tags = {
      Name = "dev-private-subnet1"
    }
  
}
resource "aws_subnet" "prod-public-subnet" {
    vpc_id = aws_vpc.prod-vpc.id
    cidr_block = "172.18.1.0/24"
    tags = {
      Name = "prod-public-subnet1"
    }
  
}
resource "aws_subnet" "prod-private-subnet" {
    vpc_id = aws_vpc.prod-vpc.id
    cidr_block = "172.18.2.0/24"
    tags = {
      Name = "prod-private-subnet1"
    }
  
}
