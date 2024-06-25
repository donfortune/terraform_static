module "s3_bucket" {
  source = "./modules/s3_bucket"
  bucket_name = var.s3_bucket_name
}

module "cloudfront" {
  source = "./modules/cloudfront"
  s3_bucket_arn = module.s3_bucket.arn
  acm_certificate_arn = module.acm.certificate_arn
}

module "route53" {
  source = "./modules/route53"
  domain_name = var.domain_name
  cloudfront_domain_name = module.cloudfront.domain_name
}
