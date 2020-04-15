# Project Title

Docker Task - A Project given by VGG

# Proposed Stack
Golang

# Top-level directory layout

    📦vggTask
        📦route
            ┣ 📜main.go
        ┗ 📦dockerfile
        ┗ 📦server.conf
        ┗ 📦README.md

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
git clone https://github.com/adefemi171/recipeApp.git
```

```
$ docker build -f ./flask-app-test2/Dockerfile -t flask-app:1.0.0 .
```

```
$ docker build -f ./nginxreverseproxy/Dockerfile -t nginx-proxy:1.0.0 .
```

It can be tagged as latest
### Step two

Create network

```
$ docker network create --driver bridge test-network
```

### Step three

Run the containers

```
docker run --name flask-test-app --network test-network -d flask-app
```

```
docker run --name nginx-test-proxy --network test-network -d -p 6000:80 nginx-proxy
```

## Tests

Visit localhost:6000

