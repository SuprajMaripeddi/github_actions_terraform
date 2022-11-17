resource "aws_iam_role" "test_role" {
  name = "iam_depends"
   assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}
resource "aws_iam_policy" "policy" {
  name        = "iam-policy"
  description = "A test policy"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "test-attach" {
  role       = aws_iam_role.test_role.name
  policy_arn = aws_iam_policy.policy.arn
  depends_on=[aws_iam_role.test_role,aws_iam_policy.policy]
}
provider "aws" {
  region="us-east-1"
}

terraform {
  backend "s3" {
    bucket = "suprajgithub"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

