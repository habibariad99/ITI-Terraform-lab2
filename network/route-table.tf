resource "aws_route_table" "my_pub_route_table" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags={
     Name = "my_pub_route_table"
  }
}

resource "aws_route_table_association" "public-subnet-association1a" {
  count = 2
  subnet_id      = aws_subnet.public_subnets[count.index].id
  route_table_id = aws_route_table.my_pub_route_table.id
}


resource "aws_route_table" "my_prv_route_table" {
  vpc_id = aws_vpc.myvpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags={
     Name = "my_prv_route_table"
  }
}

resource "aws_route_table_association" "private-subnet-association1a" {
  count = 2
  subnet_id      = aws_subnet.private_subnets[count.index].id
  route_table_id = aws_route_table.my_pub_route_table.id
}


