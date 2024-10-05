variable "aws_region" {
  description = "The AWS region to deploy the resources"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
}

variable "ami_id" {
  description = "The AMI ID for the instances"
  type        = string
  default     = "ami-0b4c7755cdf0d9219"  
}

variable "instance_type" {
  description = "The instance type for the instances"
  type        = string
}
