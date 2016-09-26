provider "aws" {
  access_key = "AKIAI4XM2Y4EYYXJZ5UQ"
  secret_key = "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"
  region     = "us-east-1"
}

resource "aws_iam_group" "developers" {
    name = "developers"
    path = "/users/"
}

resource "aws_iam_role" "test_role" {
    name = "test_role"
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
