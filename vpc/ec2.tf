module "ec2"{
    source = "terraform-aws-modules/ec2-instance/aws"

    name = "ec2-instance-testing"
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = module.vpc.privatesubnetid
    key_name = "test"

    tags={
        "Name" = "testinstance"
    }


}