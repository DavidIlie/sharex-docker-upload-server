# Docker ShareX Custom Upload Server

This is a really basic ShareX custom upload server which can be installed on Docker or Kubernetes. It can only upload images.

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