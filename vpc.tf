resource "aws_vpc" "dev-vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "dev_vpc"
    
  }
  
}
resource "aws_vpc" "prod-vpc" {
  cidr_block = "172.18.0.0/16"
  tags = {
    Name = "prod_vpc"
    
  }
  
}



