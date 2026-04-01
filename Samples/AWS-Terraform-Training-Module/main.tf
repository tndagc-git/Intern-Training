#########################################
# Terraform Block
# - Defines Terraform and provider versions
#########################################
terraform {
  required_version = ">= 1.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

#########################################
# Provider Configuration
# - Tells Terraform which cloud and region to use
#########################################
provider "aws" {
  region = var.aws_region
}

