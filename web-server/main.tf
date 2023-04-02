# Create an AWS EC2 instance for the web server
resource "aws_instance" "web-server" {
  ami           = "ami-0ec7f9846da6b0f61"  # Ubuntu 22.04 LTS from https://cloud-images.ubuntu.com/locator/ec2/
  instance_type = var.instance_type

  key_name        = var.instance_key
  subnet_id       = var.public_subnet_id
  security_groups = [var.security_group_id]

  associate_public_ip_address = true
  user_data                   = file("user_data/vm-configuration.tpl")

  tags = {
    Name = "web-server-1"
  }
}
