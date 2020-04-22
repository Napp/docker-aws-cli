# docker-aws-cli
Docker image for AWS deployment

## How to build 

Example of building one of the images

```bash
docker build -t napp/docker-aws-cli:3 -f Dockerfile .
docker push napp/docker-aws-cli:3
```

In oue Serverless docker images, we follow the serverless cli version.

```bash
cd serverless
docker build -t napp/serverless:1.67.3 -f Dockerfile .
docker push napp/serverless:1.67.3
```
