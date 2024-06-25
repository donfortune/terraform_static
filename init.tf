provider "aws" {
  region = var.region
}

terraform {
  backend "s3" {
    bucket = "terraform-state-2021"
    key    = ".terraform/terraform.tfstate"
    region = "eu-west-1"
  } 
}
