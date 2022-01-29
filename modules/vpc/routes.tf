resource "aws_route_table" "public" {

    vpc_id = aws_vpc.vpctest.id 
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.IG.id
    }

    tags = {
        "Name" = "publicroutetable"
    }
  
}

resource "aws_route_table" "private" {

    vpc_id = aws_vpc.vpctest.id 
    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = aws_nat_gateway.NAT.id
    }

    tags = {
        "Name" = "privateroutetable"
    }
  
}

resource "aws_route_table_association" "publicroutetableassociation" {
    subnet_id = aws_subnet.public-subnet-us-west-2a.id
    route_table_id = aws_route_table.public.id
  
}

resource "aws_route_table_association" "privateroutetableassociation" {
    subnet_id = aws_subnet.private-subnet-us-west-2a.id
    route_table_id = aws_route_table.private.id
  
}