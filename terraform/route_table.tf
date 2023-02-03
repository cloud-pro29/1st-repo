#public route table
resource "aws_route_table" "vayola_pub_rt" {
  vpc_id = aws_vpc.vayola.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.vayola-igw.id
  }


  tags = {
    Name = "vayola_pub_rt"
  }
}

#private route table
resource "aws_route_table" "vayola_priv_rt" {
  vpc_id = aws_vpc.vayola.id

  tags = {
    Name = "vayola_priv_rt"
  }
}

#pub sub association
resource "aws_route_table_association" "vayola_pub_association" {
  subnet_id      = aws_subnet.vayola_pub.id
  route_table_id = aws_route_table.vayola_pub_rt.id
}


#privete sub association
resource "aws_route_table_association" "vayola_priv_association" {
  subnet_id      = aws_subnet.vayola_priv.id
  route_table_id = aws_route_table.vayola_priv_rt.id
}