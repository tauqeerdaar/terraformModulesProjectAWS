module "vpc" {
  source = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
}

module "subnets" {
  source = "./modules/subnets"
  vpc_id = module.vpc.vpc_id
  public_subnet_cidr = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  db_subnet_cidr_1 = var.db_subnet_cidr_1
  db_subnet_cidr_2 = var.db_subnet_cidr_2
}

module "internet_gateway" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc.vpc_id
}

module "route_table" {
  source = "./modules/route_table"
  vpc_id = module.vpc.vpc_id
  public_subnet_id = module.subnets.public_subnet_id
  internet_gateway_id = module.internet_gateway.internet_gateway_id
}

module "security_groups" {
  source = "./modules/security_groups"
  vpc_id = module.vpc.vpc_id
}

module "db_subnet_group" {
  source = "./modules/db_subnet_group"
  subnet_ids = module.subnets.db_subnet_ids
}

module "rds" {
  source = "./modules/rds"
  db_username = var.db_username
  db_password = var.db_password
  rds_instance_type = var.rds_instance_type
  db_allocated_storage = var.db_allocated_storage
  db_subnet_group_name = module.db_subnet_group.subnet_group_name
  db_security_group_id = module.security_groups.db_sg_id
}

module "s3" {
  source = "./modules/s3"
  aws_region = var.aws_region
}

module "launch_template" {
  source = "./modules/launch_template"
  ec2_ami = var.ec2_ami
  instance_type = var.instance_type
  key_pair_name = var.key_pair_name
  web_sg_id = module.security_groups.web_sg_id
}

module "autoscaling" {
  source = "./modules/autoscaling"
  public_subnet_id = module.subnets.public_subnet_id
  launch_template_id = module.launch_template.launch_template_id
}
