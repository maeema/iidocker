
docker run -d -p 2020:3306 --name mysql -e MYSQL_ROOT_PASSWORD=s6w84xc__dfg -e MYSQL_DATABASE=iiexercise mysql
docker run -d -p 2021:27017 --name mongo -d mongo
docker build -f booksDockerfile -t books 
docker build -f salesDockerfile -t sales
docker run -d -t --name books --link mysql:mysql -p 8084:8080 books
docker run -d -t --name sales --link mongodb:mongo --link books:books -p 8088:8888 sales