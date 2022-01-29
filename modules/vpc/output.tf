output "vpcid" {
    value = aws_vpc.vpctest.id
    description = "To show the vpc id"
}

output "privatesubnetid" {
    value = aws_subnet.private-subnet-us-west-2a.id
}