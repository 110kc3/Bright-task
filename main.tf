terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region     = var.region
  # credentials_file = var.creds
  #  = "C:/repos/Bright-task/my-key-pair" 
  # secret_key = var.secret_key
}

module "web-server" {
  source ="./web-server"
}

module "network"{
  source = "./network"
}

module "database"{
  source = "./database"
}

module "load-balancer"{
  source = "./load-balancer"
}