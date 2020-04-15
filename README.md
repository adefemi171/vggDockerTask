# Project Title

Docker Task - A Project given by VGG

# Proposed Stack
Golang

# Top-level directory layout

    📦vggDockerTask
        📦bin
            ┣ 📜start.sh
        ┗ 📜main.go
        ┗ 📜go.mod
        ┗ 📜dockerfile
        ┗ 📜server.conf
        ┗ 📜README.md

## Prerequisites

Certain Application that needs to be installed before running the App

Route was written using Golang

[Go](https://golang.org/doc/install)

Router was Created using Mux

[Mux](https://github.com/gorilla/mux)

Container used was Docker Container

[Docker](https://docs.docker.com/get-docker/)

Server used was Nginx

[Nginx](https://docs.nginx.com/nginx/admin-guide/installing-nginx/installing-nginx-open-source/)


# How to setup project and run locally

### Clone the repository 

```
git clone https://github.com/adefemi171/vggDockerTask.git
```

Build image using

```
$ docker build -t <image_name> .
```
Run Image using reverse proxy

```
docker run --name <image_name_of_choice> -p 9900:80 <image_name>
```

## Open Browser and visit

```
localhost:9900
```

