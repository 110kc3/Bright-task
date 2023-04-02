output "web_server_public_ip" {
  value       = aws_instance.web-server.public_ip
  description = "Public IP address of the web server"
}
