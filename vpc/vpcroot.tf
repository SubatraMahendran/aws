module "vpc" {
    source = "../modules/vpc"
    publicsubnetcidr = "10.0.1.0/24"
    privatesubnetcidr = var.privatesubnetcidr
    
  
}