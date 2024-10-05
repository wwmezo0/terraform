

variable "aws_region" {
  description = "region for aws"
  type        = string
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr_block" {
  description = "CIDR block for the public subnet"
  type        = string
}
variable "private_subnet_cidr_block" {
  description = "CIDR block for the private subnet"
  type        = string
}
variable "ami_id" {
  description = "AMI ID"
  type        = string
}


variable "instance_type" {
  description = "instance type"
  type        = string
}
