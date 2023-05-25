FROM ubuntu

COPY . /hello_world

WORKDIR /hello_world

RUN apt-get update && apt-get install -y build-essential g++
RUN g++ main.cpp -o main

CMD ["./main"]