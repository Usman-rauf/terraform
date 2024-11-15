variable "aws_region" {
  description = "The AWS region to deploy the infrastructure"
  type        = string
  default     = "us-east-1"
}

variable "svelte_origin_domain" {
  description = "Domain name for the Svelte application's origin in CloudFront"
  type        = string
}

variable "svelte_origin_id" {
  description = "Origin ID for the Svelte application distribution in CloudFront"
  type        = string
  default     = "SvelteOrigin"
}

variable "singlepage_origin_domain" {
  description = "Domain name for the single-page application's origin in CloudFront"
  type        = string
}

variable "singlepage_origin_id" {
  description = "Origin ID for the single-page application distribution in CloudFront"
  type        = string
  default     = "SinglePageOrigin"
}
