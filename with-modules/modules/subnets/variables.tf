variable "vpc_id" {
  description = "The ID of the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "The CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "public_route_table_id" {
  description = "The ID of the public route table"
  type        = string
}

variable "private_route_table_id" {
  description = "The ID of the private route table"
  type        = string
}
