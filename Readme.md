This project is for AWS Infrastructure as Code(IaC) interactive workshops.

# About the Mentor

Karl is a junior SRE (Site Reliability Engineer) specialized in AWS Infrastructure as Code. He has an interest in education and hates how public education system systematically deletes the joy of learning. As he studies more about AWS in his job, he creates this workshop series to share what he learned with the community.

# What is IaC?

Infrastructure as code (IaC) is the process of managing and provisioning computer data centers through machine-readable definition files, rather than physical hardware configuration or interactive configuration tools. More on: https://en.wikipedia.org/wiki/Infrastructure_as_Code.

# Why IaC?

So you receive this unpleasant notification that a server is unreachable. You follow your usual quick fix routines (for example: flip through the logs to see what has happened), only to find out that the server has actually crashed. You freeze! Immediately, you get flashbacks of the hustle that you had to go through while trying to configure that server. You try to recall every component you had installed on the dead machine, plus their versions. It strikes you that you cannot even recall the order in which everything was installed, along with the nitty gritty. More one: https://www.thoughtworks.com/insights/blog/infrastructure-code-reason-smile.

# Expected Audience

* Know basic computer
* Sysadmin, DevOps, SRE
* Developers work on top of provisioned infrastructure

# Workshops

## Workshop 1: Containerization

In this workshop, we will use Dockerfile to containerize a simple Nodejs project. Along the way, we will understand the syntax of Dockerfile, know what is ports and hands on run the application.

## Workshop 2: Deploy to the cloud

With a working application, we now can deploy it to AWS Elasitc Beanstalk. Along the way, we will be able to know the workflow with Elatic Beanstalk.

## Workshop 3: Infrastructure as Code

In this workshop, we will use terraform script to describe the Elatic Beanstalk environment, which we will deploy application to.

## Workshop 4: Monitorinng your Application

Use cloudwatch to monitoring your application.

## Workshop 5: Multi-tier Application

Use Lambda function to get vpc info to help with a better design.

## Workshop 6: Debugging under AWS cloud context

* Go back to documentation, training, example and communities
* Use flow log

## Workshop 7: Continuous Delivery

Use jenkins for Continuous Delivery.

# FAQ

1. **What is AWS?** Amazon Web Services (AWS) is a secure cloud services platform, offering compute power, database storage, content delivery and other functionality to help businesses scale and grow.

2. **What is Docker?** Docker is the computer program which does containerization.

3. **What is Cloudformation?** Cloudformation is AWS only IaC tool, open source counterparts terraform.

4. **What is Elastic Beanstalk?**

5. **What is reproducible deployment environment?**

6. **Why create interactive workshops?** Base on every new features, it creates a corresponding hands on example to play with.

