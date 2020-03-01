#build: CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags "-s -w" -a -o xueqiu-notifier .

# If you need SSL certificates for HTTPS, replace `FROM SCRATCH` with:
#
FROM alpine:3.7
RUN apk --no-cache add ca-certificates
RUN apk update && apk add tzdata && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo "Asia/Shanghai" > /etc/timezone

#
# FROM scratch
WORKDIR /root/
COPY ./xueqiu-notifier .

ENTRYPOINT ["./xueqiu-notifier"]

#docker build -t xueqiu-notifier .
#docker-compose build
#docker-compose push
#docker-compose up