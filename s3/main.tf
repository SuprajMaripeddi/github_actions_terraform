# main.tf

provider "aws" {
  region = "us-east-1" # Replace with your desired AWS region
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "devopsclassbucket1" # Replace with your desired bucket name
  acl    = "private"

  tags = {
    Name        = "devopsclassbucket1"
    Environment = "Production"
  }
}
