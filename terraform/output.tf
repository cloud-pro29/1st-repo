output "instance_public_ip" {
  description = "Public IP address of the EC2 instance to ssh"
  value       = aws_instance.web_server.public_ip
}