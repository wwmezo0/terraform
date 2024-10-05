variable "ami_id" {
  description = "The AMI ID for the instances"
  type        = string
  default     = "ami-0b4c7755cdf0d9219"  
}

variable "instance_type" {
  description = "The instance type for the instances"
  type        = string
}

variable "public_subnet_id" {
  description = "The ID of the public subnet"
  type        = string
}

variable "private_subnet_id" {
  description = "The ID of the private subnet"
  type        = string
}
