module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.14.0"

  name = "simple-example"
  cidr = "10.0.0.0/16"

  azs             = var.vpc_availability_zones
  private_subnets = var.vpc_private_subnet
  public_subnets  = var.vpc_public_subnet

  database_subnets = var.vpc_database_subnet
  create_database_subnet_group = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table


  enable_ipv6 = false
  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_create_single_nat_gateway

  enable_dns_hostnames = true
  enable_dns_support = true

  public_subnet_tags = {
    Name = "public subnets"
  }
   
  private_subnet_tags = {
    Name = "private subnets"
  } 
  
  database_subnet_tags = {
    Name = "Private database subnets"  
  }

  tags = local.common_tags
  vpc_tags = local.common_tags
  
}