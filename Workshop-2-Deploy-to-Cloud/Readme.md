# Prerequisite

Create aws account, install aws cli, install eb cli.

## Mac

1. [Create](https://portal.aws.amazon.com/billing/signup#/start) an aws account, ignore this step if you already got one.

2. [Install](https://github.com/aws/aws-cli/issues/727) AWS cli with Homebrew

3. [Install](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install-osx.html) eb cli with Homebrew

# Commands

Before starting command, you should be inside the `./node-playground` directory.

1. Create Elastic Beanstalk application

    ```bash
    eb init
    ```

2. Create Environment

    ```bash
    eb create
    ```

3. Deploy application

    ```bash
    eb deploy
    ```
