# Start from the latest golang base image
FROM golang:latest

# Add Maintainer Info
LABEL maintainer="Adefemi Micheal <adefemi171@gmail.com>"

WORKDIR /app

COPY ./ /app

RUN go mod download
RUN go get -d github.com/gorilla/mux

ENTRYPOINT go run route/main.go
# Build the Go app
CMD ["go","run","main.go"]



FROM nginx:stable-alpine
COPY default.conf /etc/nginx/conf.d
EXPOSE 80/tcp
WORKDIR /usr/share/nginx/html
CMD ["/bin/sh", "-c", "exec nginx -g 'daemon off;';"]