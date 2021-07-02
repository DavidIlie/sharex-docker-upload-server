# Docker ShareX Custom Upload Server

This is a really basic ShareX custom upload server which can be installed on Docker or Kubernetes. It can only upload images.

You can build the docker image if you want or use the published docker image if you don't want to modify anything.

```bash
docker pull ghcr.io/davidilie/sharex-docker-upload-server:latest
```

## Building the Docker Image

```bash
docker build -t *registry/name* .
```

## ENV and Paths

### env variables:

- `SECRET_KEY `- a key which will be used to protect your sharex server from being used by others
- `DOMAIN_URL` - the domain in which the server will run on

### paths:

- `/var/www/html/img` - where the images are uploaded to

## Deployment

You can deploy this on Docker or Kubernetes:

### Docker

```bash
sudo docker run -dit --name sharex-upload-server -p 8080:80 *imagename* -v *hostpath*:/var/www/html/img
```

### Kubnernetes

You can create the deployment yourself or use an orchestrator like Rancher or Portainer.


## Connecting it to ShareX

In ShareX, go to Destinations and to Custom Uploader Settings

<img src="https://user-images.githubusercontent.com/47594764/124262050-d8ac8f00-db31-11eb-94b5-c7ea0ce9ea75.png">

Create something similar this but ensure that these match <strong>your</strong> information