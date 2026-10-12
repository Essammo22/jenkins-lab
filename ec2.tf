resource "aws_instance" "web-app1" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet_1.id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = var.tag[7]
  }

}
resource "aws_instance" "backend-app" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.private_subnet_1.id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.backend_sg.id]

  tags = {
    Name = var.tag[8]
  }

}
resource "aws_instance" "web-app2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public_subnet_2.id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name = var.tag[9]
  }

}
resource "aws_instance" "backend-app2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.private_subnet_2.id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.backend_sg.id]

  tags = {
    Name = var.tag[10]
  }

}