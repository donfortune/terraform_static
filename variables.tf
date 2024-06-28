variable "region" {
 
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  
  default = "tambu-bucket-24-06-27"
  type        = string
}

variable "domain_name" {
  
  default = "tambu.tech"
}

variable "cloudfront_certificate_arn" {
  
  default = "arn:aws:acm:us-east-1:431620297255:certificate/a4286910-f6be-42ea-8db7-f5f85d8703a7"
}

variable "api_name" {

  default = "static-api"
  
}

variable "custom_domain" {
  
  default = "tambu.tech"
}



