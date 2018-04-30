This is a dockerized playground for nodejs.

# Commands


## Build local image

- build image: `docker build -t node-playground .`

- run container: `docker run -d -p 8000:8000 node-playground`

## Deploy to Elastic Beanstalk

- Connect local repo branch with remote stack environment: `eb init`

- Deploy local repo branch to remote environment: `ed deploy`
