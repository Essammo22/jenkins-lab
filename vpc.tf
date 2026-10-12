resource "aws_vpc" "main" {
  cidr_block           = var.cidr_block[0]
  enable_dns_hostnames = var.dns_hostname
  enable_dns_support   = var.dns_support
  tags = {
    Name = "vpc_${var.tag[0]}"
  }
}