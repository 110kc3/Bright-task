output "web_server_public_ip" {
  value       = module.web-server.web_server_public_ip
  description = "Public IP address of the created web server"
}




output "load_balancer_dns_name" {
  value       = module.load-balancer.load_balancer_dns_name
  description = "DNS name of the load balancer"
}
