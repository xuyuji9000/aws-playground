This project is aws cloudformation infrastructure as code(IOC) playground.

It will contain cloudformation, codepipeline, s3, rds IOC setup demos.

# Commands

- create the stack: "aws cloudformation create-stack --stack-name myteststack --template-body file:/${PWD}/mytemplate.json"

- destroy the stack: "aws cloudformation delete-stack --stack-name myteststack --template-body file:/${PWD}/mytemplate.json"