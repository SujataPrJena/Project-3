#vpc output values#


#vpc id
#vpc cidr block
#vpc private subnet
#vpc private subnet arns
#vpc public subnet
#vpc public subnet arns
#vpc nat gateway public ip
#vpc azs


#vpc id
output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

#vpc cidr block
output "vpc_cidr_block" {
  description = "The CIDR block of the VPC"
  value       = module.vpc.vpc_cidr_block
}

#vpc private subnet
output "private_subnets" {
  description = "List of IDs of private subnets"
  value       = module.vpc.private_subnets
}

#vpc private subnet arns
output "private_subnet_arns" {
  description = "List of ARNs of private subnets"
  value       = module.vpc.private_subnet_arns
}

#vpc public subnets
output "public_subnets" {
  description = "List of IDs of public subnets"
  value       = module.vpc.public_subnets
}

#vpc private subnet arns
output "public_subnet_arns" {
  description = "List of ARNs of public subnets"
  value       = module.vpc.public_subnet_arns
}

#vpc nat gateway public ip
output "nat_public_ips" {
  description = "List of public Elastic IPs created for AWS NAT Gateway"
  value       = module.vpc.nat_public_ips
}

#vpc azs
output "azs" {
  description = "A list of availability zones spefified as argument to this module"
  value       = module.vpc.azs
}




