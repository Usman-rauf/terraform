resource "aws_route53_zone" "app_zone" {
  name = var.domain_name
}

output "route53_zone_id" {
  value = aws_route53_zone.app_zone.zone_id
}
