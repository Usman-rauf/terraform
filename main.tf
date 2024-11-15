provider "aws" {
  region = var.aws_region
}

# VPC Module
module "vpc" {
  source = "./modules/vpc"
  vpc_cidr = var.vpc_cidr
}

# CloudFront Module
module "cloudfront" {
  source = "./modules/cloudfront"
  svelte_origin_id = "SvelteOrigin"
  singlepage_origin_id = "SinglePageOrigin"
}

# ALB Module
module "alb" {
  source = "./modules/alb"
  vpc_id = module.vpc.vpc_id
  public_subnets = module.vpc.public_subnets
}

# AutoScaling Module
module "autoscaling" {
  source = "./modules/autoscaling"
  vpc_id = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets
}

# RDS Module
module "rds" {
  source = "./modules/rds"
  db_subnet_group_name = module.vpc.db_subnet_group
  vpc_security_group_ids = [module.vpc.default_security_group]
}

# Route 53 Module
module "route53" {
  source = "./modules/route53"
  domain_name = var.domain_name
}

# MediaConvert Module
module "mediaconvert" {
  source = "./modules/mediaconvert"
}

# ClickHouseDB Module
module "clickhouse" {
  source = "./modules/clickhouse"
}

# CI/CD Module
module "ci_cd" {
  source = "./modules/ci_cd"
}
