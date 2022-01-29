resource "aws_eip" "eip" {
    #vpc_id = aws_vpc.vpctest.id
    vpc =true
  
}

resource "aws_nat_gateway" "NAT" {
    allocation_id = aws_eip.eip.id
    subnet_id = aws_subnet.public-subnet-us-west-2a.id

    depends_on = [
      aws_internet_gateway.IG
    ]

    tags = {
        "Name" = "NAT"
    }
}