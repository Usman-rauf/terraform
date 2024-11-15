

# CloudFront Distribution for Svelte Application
resource "aws_cloudfront_distribution" "svelte" {
  origin {
    domain_name = var.svelte_origin_domain
    origin_id   = var.svelte_origin_id

    s3_origin_config {
      origin_access_identity = aws_cloudfront_origin_access_identity.svelte.iam_arn
    }
  }

  enabled             = true
  is_ipv6_enabled     = true
  default_root_object = "index.html"

  default_cache_behavior {
    target_origin_id       = var.svelte_origin_id
    viewer_protocol_policy = "redirect-to-https"
    allowed_methods        = ["GET", "HEAD", "OPTIONS"]
    cached_methods         = ["GET", "HEAD"]

    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }

    min_ttl                = 0
    default_ttl            = 3600
    max_ttl                = 86400
  }

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }

  viewer_certificate {# CloudFront Distribution for Single Page Application
resource "aws_cloudfront_distribution" "singlepage" {
  origin {
    domain_name = var.singlepage_origin_domain
    origin_id   = var.singlepage_origin_id

    s3_origin_config {
      origin_access_identity = aws_cloudfront_origin_access_identity.singlepage.iam_arn
    }
  }

  enabled             = true
  is_ipv6_enabled     = true
  default_root_object = "index.html"

  default_cache_behavior {
    target_origin_id       = var.singlepage_origin_id
    viewer_protocol_policy = "redirect-to-https"
    allowed_methods        = ["GET", "HEAD", "OPTIONS"]
    cached_methods         = ["GET", "HEAD"]

    forwarded_values {
      query

    cloudfront_default_certificate = true
  }
}

