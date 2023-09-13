FROM golang

WORKDIR /app

COPY go.* ./
RUN go mod download

COPY *.go ./
RUN go build -o /hello_go_http

CMD ["/hello_go_http"]
