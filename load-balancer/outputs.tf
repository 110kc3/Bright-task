output "load_balancer_dns_name" {
  value       = aws_lb.web-server_lb.dns_name
  description = "DNS name of the load balancer"
}
