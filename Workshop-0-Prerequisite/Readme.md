# Dependencies to be prepared before the workshop

* [Mac](#Mac)
* [Ubuntu](#Ubuntu)
* [TODO Windows?](Windows)

## Mac

### Create AWS Global account

- [Create](https://portal.aws.amazon.com/billing/signup#/start) an aws account, ignore this step if you already got one.

    P.S. Create AWS account atleast 24h prior to workshop (otherwise account verifocation may not have completed and eb create command fails).

- [Create](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html) an AWS IAM user with admin permission.

### Install Docker

- [Install Docker for Mac](https://docs.docker.com/docker-for-mac/install/)

```
docker run hello-world
```

### Install AWS cli

- [Install](https://github.com/aws/aws-cli/issues/727) AWS cli with Homebrew

```
aws --version
```

### Install AWS Elastic Beans cli

- [Install](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install-osx.html) eb cli with Homebrew

```
eb --version
```

### Install terraform

- [Install](https://www.bonusbits.com/wiki/HowTo:Install_Terraform_on_macOS) terraform on Mac

```
terraform
```

## Ubuntu

### Create AWS Global account

- [Create](https://portal.aws.amazon.com/billing/signup#/start) an aws account, ignore this step if you already got one.

    P.S. Create AWS account atleast 24h prior to workshop (otherwise account verifocation may not have completed and eb create command fails).

- [Create](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html) an AWS IAM user with admin permission.

### Install Docker

- [Install Docker for Ubuntu](https://docs.docker.com/install/linux/docker-ce/ubuntu/#install-docker-ce)

- Set user as part of docker usergroup to avoid using sudo on each command [details](https://askubuntu.com/a/477554)
```
sudo group add docker
sudo gpassword -a $USER docker
newgrp docker

docker run hello-world
```

### Install AWS cli

- Requires python and pip

[Install](https://docs.aws.amazon.com/cli/latest/userguide/installing.html)


```
aws --version
```

### Install AWS elastic beanstalk cli

[Install](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install.html)

```
eb --version
```

### Install terraform

[Install](https://www.terraform.io/intro/getting-started/install.html)

```
terraform
```

## Windows

