Experiment the process of ECS cluster deployment.


- Query ECS instance ami image: `aws ec2 describe-images --filters "Name=name,Values=amzn-ami-*-amazon-ecs-optimized" --query Images[*].{ID:ImageId}`
