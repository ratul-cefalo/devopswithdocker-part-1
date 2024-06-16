#command to run 

# build `docker build -t ex113 .`
# run `docker run -it -p 8080 ex113`

FROM golang:1.16

EXPOSE 8080

WORKDIR /app

COPY . .

RUN go build

CMD ./server
