output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_id" {
  value = module.subnets.public_subnet_id
}

output "private_subnet_id" {
  value = module.subnets.private_subnet_id
}

output "public_sg_id" {
  value = module.security_groups.public_sg_id
}

output "private_sg_id" {
  value = module.security_groups.private_sg_id
}

output "bastion_instance_id" {
  value = module.instances.bastion_instance_id
}

output "app_instance_id" {
  value = module.instances.app_instance_id
}
