resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.aws_eip.id
  subnet_id= aws_subnet.public_subnets[0].id

  tags = {
    Name = "natgw"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  #depends_on = [aws_internet_gateway.gw]
}

resource "aws_eip" "aws_eip" {
  
  tags = {
    name="nat-eip"
  }
}