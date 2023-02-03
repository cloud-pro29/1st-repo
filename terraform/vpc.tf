resource "aws_vpc" "vayola" {
  cidr_block = "10.0.0.0/16"
  #cidr_block =  var.vpc_cidr
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_name
  }
}