terraform {
# backend "s3" {
#     bucket = "github-actions-with-terraform"
#     key    = "s3/terraform.tfstate"
#     region = "us-east-1"
#   }
# }
provider "aws" {
  region  = "us-east-1"
}
