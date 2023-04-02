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

  instance_type     = var.instance_type
  instance_key      = var.instance_key
  public_subnet_id  = module.network.public_subnet_id_1a
  security_group_id = module.network.sg_id

}

module "network"{
  source = "./network"

  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr1
  public_subnet_cidr2 = var.public_subnet_cidr2
  availability-zone-1a = var.availability-zone-1a
  availability-zone-1b = var.availability-zone-1b

}

# module "database"{
#   source = "./database"
# }

module "load-balancer"{
  source = "./load-balancer"

  public_subnet_id_1 = module.network.public_subnet_id_1a
  public_subnet_id_2 = module.network.public_subnet_id_1b
  vpc_id             = module.network.vpc_id
  web_server_id      = module.web-server.instance_id
}
