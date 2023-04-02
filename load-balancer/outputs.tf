# output "web_instance_ip" {
#     value = aws_instance.web-server.public_dns
# }

output "load_balancer_dns" {
  value       = aws_lb.web-server_lb.dns_name
  description = "DNS name of the load balancer"
}
