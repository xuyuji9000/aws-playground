provider "aws" {
  region = "ap-southeast-1"
  shared_credentials_file = "~/.aws/credentials"
}

resource "aws_iam_role_policy" "lambda_playground_policy" {
  name = "lambda_playground_policy"
  role = "${aws_iam_role.lambda_playground.id}"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}


resource "aws_iam_role" "lambda_playground" {
  name = "lambda_playground"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": "AssumeByLambda"
    }
  ]
}
EOF
}

resource "aws_lambda_function" "lambda_playground" {
  function_name    = "lambda_playground"
  s3_bucket        = "lambda-playground-kx"
  s3_key           = "index.zip"
  role             = "${aws_iam_role.lambda_playground.arn}"
  handler          = "index.handler"
  runtime          = "nodejs8.10"
}