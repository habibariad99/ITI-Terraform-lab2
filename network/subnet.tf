resource "aws_subnet" "public_subnets" {
    count = 2
    vpc_id = aws_vpc.myvpc.id
    cidr_block= var.sub_public_cidr_list[count.index]
    availability_zone=var.availability_zones[count.index]
    map_public_ip_on_launch=true

tags = {
    Name="public_subnets"
 }

}

resource "aws_subnet" "private_subnets" {
    count = 2
    vpc_id = aws_vpc.myvpc.id
    cidr_block=var.sub_private_cidr_list[count.index]
    availability_zone=var.availability_zones[count.index]
    
tags = {
    Name="private_subnets"
 }
}

