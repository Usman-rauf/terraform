variable "aws_region" {
  description = "The AWS region to deploy the infrastructure"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "domain_name" {
  description = "The domain name for Route 53"
  type        = string
}
variable "aws_region" {
  type = string
}

variable "vpc_id" {
  type = string
}

# Add other common variables if required
