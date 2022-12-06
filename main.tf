resource "aws_s3_bucket" "b" {
  bucket = "suprajnewgithubactionsbucket"
  }
provider "aws" {
  region =    "us-east-1"
}
