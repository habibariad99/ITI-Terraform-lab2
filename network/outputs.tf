output public_subnets {
  value = aws_subnet.public_subnets
}

output private_subnets {
  value = aws_subnet.private_subnets
}

output vpc_id {
  value = aws_vpc.myvpc.id
}

output vpc_cidr {
  
  value = aws_vpc.myvpc.cidr_block
}