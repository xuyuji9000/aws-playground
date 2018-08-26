provider "aws" {
  region = "ap-southeast-1"
  shared_credentials_file = "~/.aws/credentials"
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
  filename         = "index.zip"
  function_name    = "lambda_playground"
  role             = "${aws_iam_role.lambda_playground.arn}"
  handler          = "index.handler"
  runtime          = "nodejs8.10"
}