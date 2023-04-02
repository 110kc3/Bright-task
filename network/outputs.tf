output "public_subnet_id_1a" {
  value = aws_subnet.public_subnet-1a.id
}

output "public_subnet_id_1b" {
  value = aws_subnet.public_subnet-1b.id
}

output "sg_id" {
  value = aws_security_group.sg.id
  description = "The ID of the security group created in the network module"
}
