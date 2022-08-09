terraform {
backend "s3" {
    bucket = "github-actions-with-terraform"
    key    = "s3/terraform.tfstate"
    region = "us-east-1"
  }
  required_version = ">=0.14.9"
}
provider "aws" {
  region  = "east-us-1"
}