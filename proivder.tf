terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      Version = "~>3.27"
    }
  }
  required_version = ">=0.14.9"
}
provider "aws" {
  region  = "east-us-1"
}