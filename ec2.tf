resource "aws_instance" "webserver1" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public_subnet_1.id
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  associate_public_ip_address = true

  user_data = file("${path.module}/userdata/server1.sh")

  tags = {
    Name = "WebServer-1"
  }
}

resource "aws_instance" "webserver2" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public_subnet_2.id
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  associate_public_ip_address = true

  user_data = file("${path.module}/userdata/server2.sh")

  tags = {
    Name = "WebServer-2"
  }
}