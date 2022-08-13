provider "aws" {
    region = "us-west-2"
    profile = "default"
 #   access_key = "AKIAYMGQZ7ZI5APETBLB"
 #   secret_key = "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"
  
}

module "sg" {
    source = "../Netflix-tf-modules/sg"
    
}
module "ec2" {
    source = "../Netflix-tf-modules/ec2"
    sg_id = module.sg.sg_id
    
}
module "ec2-websever" {
    source = "../Netflix-tf-modules/ec2"
    sg_id = module.sg.sg_id
    
}