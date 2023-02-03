resource "aws_internet_gateway" "vayola-igw" {
  vpc_id = aws_vpc.vayola.id

  tags = {
    Name = "vayola-igw"
  }
}