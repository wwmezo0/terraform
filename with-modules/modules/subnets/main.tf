resource "aws_subnet" "public_subnet" {
  vpc_id                    = var.vpc_id
  cidr_block                = var.public_subnet_cidr
  map_public_ip_on_launch   = true
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = var.vpc_id
  cidr_block = var.private_subnet_cidr
}

resource "aws_route_table_association" "public_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = var.public_route_table_id
}

resource "aws_route_table_association" "private_association" {
  subnet_id      = aws_subnet.private_subnet.id
  route_table_id = var.private_route_table_id
}
