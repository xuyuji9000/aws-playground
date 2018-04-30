provider "aws" {
  region = "ap-southeast-1"
  shared_credentials_file = "/Users/yogiman/.aws/credentials"
}

# data "aws_ami" "instance_ami" {
#   most_recent = true
#   # executable_users = ["self"]

#   filter {
#     name = "name"
#     values = ["amzn-ami-hvm-2018*"]
#   }
# }

data "aws_elastic_beanstalk_solution_stack" "solution" {
  most_recent = true
  name_regex = "^64bit Amazon Linux (.*) running Docker (.*)$"
}

# output "ami" {
#   value = "${data.aws_ami.instance_ami.id}"
# }

resource "aws_elastic_beanstalk_application" "playgound" {
  name        = "playgound"
  description = "This is an elasitc beanstalk playgound."
}

resource "aws_elastic_beanstalk_environment" "node" {
  name                = "node"
  application         = "${aws_elastic_beanstalk_application.playgound.name}"
  solution_stack_name = "${data.aws_elastic_beanstalk_solution_stack.solution.name}"
}

output "solution" {
  value = "${data.aws_elastic_beanstalk_solution_stack.solution.name}"
}