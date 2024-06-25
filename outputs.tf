output "s3_bucket_name" {
  value = module.s3_bucket.bucket_name
}

output "cloudfront_domain_name" {
  value = module.cloudfront.domain_name
}

output "website_url" {
  value = "https://${module.route53.domain_name}"
}
