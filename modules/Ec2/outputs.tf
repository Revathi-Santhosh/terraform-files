output "instance_id" {
  value  = aws_instance.test_ec2.id
}
output "private_ip" {
  value  = aws_instance.test_ec2.private_ip
}
output "arn" {
  value = aws_instance.test_ec2.private_ip
}
output "subnet_id" {
  value = aws_instance.test_ec2.subnet_id
}
