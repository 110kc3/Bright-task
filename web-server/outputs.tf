output "web_server_public_ip" {
  value       = aws_instance.web-server.public_ip
  description = "Public IP address of the web server"
}

output "instance_id" {
  value       = aws_instance.web-server.id
  description = "ID of the web server instance"
}