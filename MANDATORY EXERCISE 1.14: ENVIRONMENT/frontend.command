docker build -t dwd-frontend .
docker run -it -p 5000 --network="host" dwd-frontend