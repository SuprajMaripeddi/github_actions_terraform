resource "aws_s3_bucket" "b" {
  bucket = "suprajnewgithubactionsbucket"
  }
provider "aws" {
  region =    "us-east-1"
}
terraform {
  backend "s3" {
    bucket = "supraj-terraform-staate"
    key    = "aws.tfstate"
    region = "us-east-1"
  }
}

