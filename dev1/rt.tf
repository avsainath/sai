resource "aws_default_route_table" "rt1" {
  default_route_table_id = aws_vpc.vpc.default_route_table_id

  route {
    cidr_block = var.rtid
    gateway_id = aws_internet_gateway.ig1.id
  }
  

  tags = {
    Name = var.rtname
  }
}