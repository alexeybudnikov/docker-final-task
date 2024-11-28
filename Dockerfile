FROM golang:1.22.5

WORKDIR /cmd

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o /parcel_app

CMD ["/parcel_app"] 
