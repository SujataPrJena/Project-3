#terraform block
terraform {
  required_version = "~> 1.0"
  required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "~> 4.9"
      }
  }
}
#aws block
provider "aws" {
  region = var.aws_region
  profile = "default"
}
