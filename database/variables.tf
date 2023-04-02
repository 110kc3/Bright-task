variable "security_group_id" {
  description = "The ID of the security group to be used for the RDS instance."
}

variable "subnet_ids" {
  description = "The list of subnet IDs for the RDS instance."
  type        = list(string)
}
