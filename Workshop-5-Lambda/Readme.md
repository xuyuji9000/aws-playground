This documents includes how to create lambda with `aws` command.

# Create a Lambda Function with Command Line



1. copy code to s3 bucket `aws s3 cp index.zip s3://lambda-playground-kx/index.zip`

2. Create lambda function `aws lambda create-function --function-name test --runtime nodejs6.10 --role arn:aws:iam::account-id:role/service-role/test --handler index.handler --code S3Bucket=lambda-playground-kx,S3Key=index.zip`


# Update Lambda Function

1. update lambda function code `aws lambda update-function-code --function-name test --s3-bucket lambda-playground-kx --s3-key index.zip`

2. update lambda function configuration `aws lambda update-function-configuration --function-name test --handler index.handler`


# Create a Lambda Function with Terraform

1. Create s3 bucket

    `terraform apply -target=aws_s3_bucket.lambda-playground-kx`

2. Create source code zip


    `zip index.zip index.js`

3. Upload source code zip to s3 bucket

    `aws s3 cp index.zip s3://lambda-playground-kx/index.zip`

4. Create lambda function


    `terraform apply`

5. Checkout the lambda function from AWS web interface