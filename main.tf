resource "aws_s3_bucket" "b" {
  bucket = "suprajsamples3bucket"

  tags = {
    Name        = "suprajsamples3bucket"
    Environment = "Dev"
  }
}
provider "aws"{
  region="ap-south-1"
}
