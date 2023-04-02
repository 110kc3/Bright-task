variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet 1a"
  type        = string
}

variable "public_subnet_cidr2" {
  description = "CIDR block for the public subnet 1b"
  type        = string
}

variable "availability-zone-1a" {
  description = "Availability Zone for the public subnet 1a"
  type        = string
}

variable "availability-zone-1b" {
  description = "Availability Zone for the public subnet 1b"
  type        = string
}
