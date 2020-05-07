variable "ami" {
  type = string
  description = "(Required) The AMI to use for the instance."
}
variable "instance_type" {
  type = string
  description = "(Required) The type of instance to start."
}
variable "vpc_security_group_ids" {
  type = list
  description = "(Optional, VPC only) A list of security group IDs to associate with."
}
variable "key_name" {
  type = string
  description = "(Optional) The key name of the Key Pair to use for the instance"
}
variable "tags_ec2" {
  type = map
  description = "(Optional) A map of tags to assign to the resource"
}
