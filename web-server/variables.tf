variable "instance_type" {
  description = "The instance type for the web server"
}

variable "instance_key" {
  description = "The key pair name for the web server"
}

variable "public_subnet_id" {
  description = "The ID of the public subnet where the web server will be deployed"
}

variable "security_group_id" {
  description = "The ID of the security group to be attached to the web server"
}
