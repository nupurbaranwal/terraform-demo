variable "region" {
  description = "Region for the EC2 instance"
  type        = string
  default     = "us-east-1"
}
variable "vpc-cidr" {
default = "10.0.0.0/16"
description = "VPC CIDR BLOCK"
type = string
}
variable "Public_Subnet_1" {
default = "10.0.0.0/24"
description = "Public_Subnet_1"
type = string
}
variable "instance_type" {
type        = string
default     = "t2.micro"
}
variable key_name {
default     = "test_key"
type = string
}
variable "ami" {
  default = "ami-xxxxxxxxxxxxxxxxxx"
  type = string
}