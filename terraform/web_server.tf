resource "aws_instance" "web_server" {
  ami           = var.instance_ami
  instance_type = var.instance_type
  subnet_id     = aws_subnet.vayola_pub.id
  key_name      = aws_key_pair.web_key.id
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  user_data = file("${path.module}/apache.sh")

  tags = {
    name = "web_server"
  }
}




