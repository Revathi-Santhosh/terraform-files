module "webapp_sg" {
  source = "./modules/security_group/"

  name =  "webapp_secgrp"
  description = "The security group for webapp"
  vpc_id = "vpc-969499ec"
  http_ingress_description = "Allowing port http"
  http_cidr_block = ["0.0.0.0/0"]
  ssh_ingress_description = "Allowing port 22"
  ssh_cidr_block = ["0.0.0.0/0"]
  tags = {
    Name = "webapp_secgrp"
  }

}

module "aws_testec2" {
  source = "./modules/Ec2"

  ami = "ami-085925f297f89fce1"
  instance_type = "t2.micro"
  vpc_security_group_ids = [module.webapp_sg.security_group_id]
  key_name = "terrraform_ec2"
  tags_ec2 = {
    Name = "testec2"
  }

}

output "nnn"{
  value = module.aws_testec2.private_ip
}
