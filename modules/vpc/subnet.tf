resource "aws_subnet" "public-subnet-us-west-2a"{
    vpc_id = aws_vpc.vpctest.id
    cidr_block = var.publicsubnetcidr

    tags = {
      "Name" = "public-subnet-us-west-2a"
    }

}

resource "aws_subnet" "private-subnet-us-west-2a"{
    vpc_id = aws_vpc.vpctest.id
    cidr_block = var.privatesubnetcidr

    tags = {
      "Name" = "private-subnet-us-west-2a"
    }

}