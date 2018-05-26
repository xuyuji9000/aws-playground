# Prerequisite

Follow the [Environment](https://github.com/xuyuji9000/aws-playground#environment-preparation) get yourself prepared for the workshop

# Workflows

## vanilla elastic beanstalk workflow

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

## IaC powered workflow


1. init local terraform working environment

    ```bash
    terraform init
    ```

2. Review stack creation plan

    ```bash
    terraform plan
    ```

3. Create stack

    ```bash
    terraform apply
    ```


4. Connect to  Elastic Beanstalk application and environment

    ```bash
    eb init
    ```
5. Deploy application

    ```bash
    eb deploy
    ```
