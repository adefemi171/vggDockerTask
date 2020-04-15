# Start from the latest golang base image
FROM golang:latest AS builder

# Add Maintainer Info
LABEL maintainer="Adefemi Micheal <adefemi171@gmail.com>"

WORKDIR /app

COPY ./ /app

# RUN go mod download
# RUN go get -d github.com/gorilla/mux
RUN go get

RUN go build .



FROM nginx:stable-alpine
WORKDIR /app

COPY --from=builder /app/simple-server .

COPY  ./server.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

# WORKDIR /usr/share/nginx/html
ENTRYPOINT go run route/main.go
CMD ["/bin/sh", "-c", "exec nginx -g 'daemon off;';", "./simple-server"]
