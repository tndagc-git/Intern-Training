#########################################
# Variables
# - Allows us to customize our deployment without changing code
#########################################

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "key_name" {
  description = "EC2 Key Pair name for SSH access"
  type        = string
  default     = "training-key"  # Change this to your actual key pair name
}
