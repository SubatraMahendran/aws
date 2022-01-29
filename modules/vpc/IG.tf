resource "aws_internet_gateway" "IG" {
    vpc_id = aws_vpc.vpctest.id

    tags = {
      "Name" = "IG"
    }
}