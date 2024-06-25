variable "region" {
  description = "The AWS region to deploy resources in"
  default     = "eu-west-1"
}

variable "domain_name" {
  description = "The domain name for the website"
}

variable "s3_bucket_name" {
  description = "The name of the S3 bucket for the static website"
}
