resource "aws_vpc" "vpctest" {
  cidr_block       = var.vpccidr
  instance_tenancy = "default"

  tags = {
    Name = "vpctest"
  }
}