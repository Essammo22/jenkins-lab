resource "aws_security_group" "web_sg" {
  name        = "web_sg"
  description = "security group of web-server"
  vpc_id      = aws_vpc.main.id
  ingress {
    from_port   = var.port[0]
    to_port     = var.port[0]
    protocol    = var.protocol
    cidr_blocks = [var.cidr_block[5]]
  }

  ingress {
    from_port   = var.port[1]
    to_port     = var.port[1]
    protocol    = var.protocol
    cidr_blocks = [var.cidr_block[0]]
  }
  egress  {
    from_port   = var.port[2]
    to_port     = var.port[2]
    protocol    = var.protocol
    cidr_blocks = [var.cidr_block[5]]
  }
}
resource "aws_security_group" "backend_sg" {
  name        = "backend_sg"
  description = "security group backend"
  vpc_id      = aws_vpc.main.id
  ingress {
    from_port       = var.port[2]
    to_port         = var.port[2]
    protocol        = var.protocol
    security_groups = [aws_security_group.web_sg.id]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.cidr_block[5]]
  }

}