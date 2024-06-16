docker build -t dwd-backend .
docker run -it -p 8080 --network="host" dwd-backend