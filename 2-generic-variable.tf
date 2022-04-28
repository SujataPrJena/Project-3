variable "aws_region" {
 description = "describe the aws region in which vpc is to be created" 
 type = string
 default = "us-east-1"
}

variable "environment" {
  description = "describe the environment as tag"
  type = string
  default = "dev"
}

variable "business_divison" {
  description = "describe the business division in the large organization"
  type = string
  default = "SAP"
}