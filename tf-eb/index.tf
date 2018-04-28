provider "aws" {
  region = "ap-southeast-1"
  shared_credentials_file = "/Users/yogiman/.aws/credentials"
}

data "aws_ami" "instance_ami" {
  most_recent = true
  # executable_users = ["self"]

  filter {
    name = "name"
    values = ["amzn-ami-hvm-2018*"]
  }
}

output "ami" {
  value = "${data.aws_ami.instance_ami.id}"
}