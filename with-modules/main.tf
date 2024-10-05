provider "aws"{
  region = var.aws_region
}




module "vpc" {
  source     = "./modules/vpc"
  cidr_block = var.vpc_cidr_block
}

module "subnets" {
  source                 = "./modules/subnets"
  vpc_id                 = module.vpc.vpc_id
  public_route_table_id  = module.vpc.public_route_table_id
  private_route_table_id = module.vpc.private_route_table_id
  public_subnet_cidr_block = var.public_subnet_cidr_block
  private_subnet_cidr_block = var.private_subnet_cidr_block
}

module "security_groups" {
  source         = "./modules/security-groups"
  vpc_id         = module.vpc.vpc_id
  vpc_cidr_block = var.vpc_cidr_block
}

module "instances" {
  source             = "./modules/instances"
  public_subnet_id   = module.subnets.public_subnet_id
  private_subnet_id  = module.subnets.private_subnet_id
  public_sg_id      = module.security_groups.public_sg_id
  private_sg_id     = module.security_groups.private_sg_id
  bastion_ami       = var.ami_id
  app_ami           = var.ami_id
  instance_type     = var.instance_type
}
