# Initialising variables 
variable "region" {
default = "eu-central-1"
}
variable "availability-zone" {
default = "eu-central-1a"
}
variable "availability-zone2" {
default = "eu-central-1b"
}
variable "instance_type" {}
variable "creds" {}
variable "instance_key" {}
variable "vpc_cidr" {}
variable "public_subnet_cidr" {}
variable "public_subnet_cidr2" {}