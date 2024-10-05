variable "ami_id" {
  description = "The AMI ID for the instances"
  type        = string
  default     = "ami-0b45ae66668865cd6"  # You can change this default value as needed
}

variable "instance_type" {
  description = "The instance type for the instances"
  type        = string
  default     = "t2.micro"  # You can change this default value as needed
}