#VPC name
variable "vpc_name" {
  description = "VPC name"
  type = string
  default = "myvpc"
}

#VPC cidr block
variable "vpc_cidr_block" {
  description = "VPC cidr block"
  type = string
  default = "10.0.0.0/16"
}

#vpc azs
variable "vpc_availability_zones" {
  description = "vpc azs"
  type = list(string)
  default = ["us-east-1a" , "us-east-1b"]
}

#vpc public subnets
variable "vpc_public_subnet" {
  description = "vpc public subnet"
  type = list(string)
  default = ["10.0.101.0/24" , "10.0.102.0/24"]
}

#vpc private subnets
variable "vpc_private_subnet" {
   description = "vpc private subnet" 
   type = list(string)
   default = ["10.0.1.0/24" ,"10.0.2.0/24"]
}

#vpc create db subnet
variable "vpc_database_subnet" {
  description = "vpc database subnet"
  type = list(string)
  default = ["10.0.151.0/24","10.0.152.0/24"]
}

#vpc create db subnet group
variable "vpc_create_database_subnet_group" {
  description = "vpc create db subnet group"
  type = bool
  default = true 
}

#vpc create db subnet rt
variable "vpc_create_database_subnet_route_table" {
  description = "create vpc db subnet rt"
  type = bool
  default = true
}

#vpc enable NAT gateway
variable "vpc_enable_nat_gateway" {
  description = "vpc enable nat gateway"
  type = bool
  default = true
}

#vpc single nat gateway
variable "vpc_create_single_nat_gateway" {
    description = "vpc create single nat gateway"
    type = bool
    default = true
}

#VPC name
#VPC cidr block
#VPC availability zones
#VPC Public subnets
#VPC Private Subnets
#VPC create database subnet
#VPC create database subnet group
##VPC create database subnet route table
#VPC enable NAT gateway
#VPC single NAT gateway 
