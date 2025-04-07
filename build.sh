docker build -t backscan-frontend -f Dockerfile.frontend .

docker build -t backscan-backend -f Dockerfile.backend .


#docker run --rm -p 80:80 backscan-frontend
#docker run --rm -p 80:8088 backscan-backend

docker-compose up --force-recreate -d

