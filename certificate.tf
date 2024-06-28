resource "aws_acm_certificate" "bucket_cert" {
  
  domain_name       = "*.tambu.tech"
  validation_method = "DNS"


}

