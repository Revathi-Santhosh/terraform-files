
resource "aws_instance" "test_ec2" {
  ami = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  key_name = var.key_name
  tags = var.tags_ec2
}
