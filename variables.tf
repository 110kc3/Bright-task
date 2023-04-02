# Initialising variables 
variable "region" {
default = "eu-central-1"
}
variable "availability-zone-1a" {
default = "eu-central-1a"
}
variable "availability-zone-1b" {
default = "eu-central-1b"
}
variable "availability-zone-1c" {
default = "eu-central-1c"
}
variable "instance_type" {}
variable "creds" {}
variable "instance_key" {}
variable "vpc_cidr" {}
variable "public_subnet_cidr1" {}
variable "public_subnet_cidr2" {}
variable "public_subnet_cidr3" {}