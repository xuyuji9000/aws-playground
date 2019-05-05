- Install the ECS command line interface, [ref](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_CLI_installation.html)

- Deploy service: 

  ```
  ecs-cli compose  service up \
  --target-group-arn TARGET_GROUP_ARN \
  --container-name web \
  --container-port 80 \
  --role IAM_ROLE_ARN
  ```
