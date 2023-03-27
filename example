provider "aws" {
  region = "eu-central-1" # Replace with your desired region
}

resource "aws_instance" "example" {
  ami           = "ami-00ad2436e75246bba" # Replace with your desired AMI ID
  instance_type = "t2.micro" # Replace with your desired instance type
  key_name      = "my-key-pair" # Replace with the name of an existing EC2 key pair in your account
  subnet_id     = "subnet-0c1dd7fa81fa2f459" # Replace with the ID of an existing subnet in your account

  tags = {
    Name = "example-instance-1"
  }
}
