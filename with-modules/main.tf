provider "aws" {
  region = var.aws_region
}

module "vpc" {
  source     = "./modules/vpc"
  vpc_cidr  = var.vpc_cidr
}

module "subnets" {
  source                  = "./modules/subnets"
  vpc_id                  = module.vpc.vpc_id
  public_route_table_id   = module.vpc.public_route_table_id
  private_route_table_id  = module.vpc.private_route_table_id
  public_subnet_cidr      = var.public_subnet_cidr
  private_subnet_cidr     = var.private_subnet_cidr
}

module "security_groups" {
  source         = "./modules/security-groups"
  vpc_id         = module.vpc.vpc_id
  vpc_cidr       = var.vpc_cidr
}

module "instances" {
  source             = "./modules/instances"
  public_subnet_id   = module.subnets.public_subnet_id
  private_subnet_id  = module.subnets.private_subnet_id
  ami_id            = var.ami_id
  instance_type     = var.instance_type
}
