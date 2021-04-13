FROM golang:latest
ENV GO111MODULE=off
RUN mkdir /app
ADD . /app/
WORKDIR /app
RUN go build -o ulmaceae .
CMD ["/app/ulmaceae"]
