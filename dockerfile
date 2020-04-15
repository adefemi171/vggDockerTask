FROM golang:latest AS builder

LABEL maintainer="Adefemi Micheal <adefemi171@gmail.com>"

WORKDIR /app

COPY . .

RUN go get

RUN go build .

FROM nginx:latest

WORKDIR /app

COPY --from=builder /app/vggTask .

COPY ./bin  .

COPY  ./nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

RUN chmod +x ./start.sh

ENTRYPOINT [ "./start.sh" ]
