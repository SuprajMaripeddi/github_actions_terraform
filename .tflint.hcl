rule "aws_resource_missing_tags" {
  enabled = true
  tags = [
    "Environment",
    "Region",
    "Version",
  ]
}


config {
    module = true
    force = false
   # disabled_by_default = false
}
 
plugin "aws" {
    enabled = true
    version = "0.4.0"
    source = "github.com/terraform-linters/tflint-ruleset-aws"
}
