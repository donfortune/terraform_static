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
  
  default = ""
}

variable "api_name" {

  default = "static-api"
  
}

variable "custom_domain" {
  
  default = "tambu.tech"
}



