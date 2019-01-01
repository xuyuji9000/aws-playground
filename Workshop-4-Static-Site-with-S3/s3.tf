provider "aws" {
  region = "ap-southeast-1"
  shared_credentials_file = "~/.aws/credentials"
}


variable "s3-static-site" {
  type    = "string"
  default = "s3-static-site.yogiman.cn"
}

resource "aws_s3_bucket" "s3-static-site" {
  bucket = "${var.s3-static-site}"
  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}

resource "aws_s3_bucket_policy" "b" {
  bucket = "${aws_s3_bucket.s3-static-site.id}"
  policy =<<POLICY
{
    "Version": "2008-10-17",
    "Statement": [
        {
            "Sid": "PublicReadGetObject",
            "Effect": "Allow",
            "Principal": "*",
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::${var.s3-static-site}/*"
        }
    ]
}
POLICY
}

output "website" {
  value = "${aws_s3_bucket.s3-static-site.website_endpoint}"
}