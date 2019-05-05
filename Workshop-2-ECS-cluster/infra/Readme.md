# Steps

1. Create VPC

2. Create instance role

3. Get ecs AMI: `aws ec2 describe-images --filters "Name=name,Values=amzn-ami-*-amazon-ecs-optimized"`

4. Create cluster


# FQAs

- Query ECS instance ami image: `aws ec2 describe-images --filters "Name=name,Values=amzn-ami-*-amazon-ecs-optimized" --query Images[*].{ID:ImageId}`
