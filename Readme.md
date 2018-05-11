This project is for aws Infrastructure as Code(IaC) interactive workshops.

# About the Mentor?

Karl is a junior SRE (Site Resilience Engineer) specialized in AWS Infrastructure as Code. He has an interest in education and hates how public education system systematically deletes the joy of learning. As he studies more about AWS in his job, he creates this workshop series to share what he learned with the community.

# What is IaC

Infrastructure as code (IaC) is the process of managing and provisioning computer data centers through machine-readable definition files, rather than physical hardware configuration or interactive configuration tools. More on: https://en.wikipedia.org/wiki/Infrastructure_as_Code.

# Why IaC

So you receive this unpleasant notification that a server is unreachable. You follow your usual quick fix routines (for example: flip through the logs to see what has happened), only to find out that the server has actually crashed. You freeze! Immediately, you get flashbacks of the hustle that you had to go through while trying to configure that server. You try to recall every component you had installed on the dead machine, plus their versions. It strikes you that you cannot even recall the order in which everything was installed, along with the nitty gritty. More one: https://www.thoughtworks.com/insights/blog/infrastructure-code-reason-smile.

# Expected Audience

* Know basic computer
* Sysadmin, DevOps, SRE
* Developers work on top of provisioned infrastructure

# Workshops

## Prepare the environment

1. [Create](https://portal.aws.amazon.com/billing/signup#/start) an aws account, ignore this step if you already got one.

2. [Install](https://github.com/aws/aws-cli/issues/727) AWS cli with Homebrew

3. [Install](http://brewformulas.org/Terraform) terraform with Homebrew

4. [Install](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install.html) eb with pip

## Workshop 1: Deploy your first application

Use technology like Elastic Beanstalk, Docker, Terraform to make a reproducible deployment environment.Basic understanding of docker needed.

## Workshop 2: Wechat IP Whitelisting

Elastic Beanstalk + Nat Gateway Cloudformation infrastructure as code interactive workshop. This setup can be used to help solving the Wechat Official Account IP whitelisting requirement.

![alt text](https://github.com/adam-p/markdown-here/raw/master/src/common/images/icon48.png "Logo Title Text 1")

## Workshop 3: 2-tier Application

## Workshop 4: Continuous Delivery
