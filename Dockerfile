FROM gcc:4.9

COPY . /usr/src/myapp
WORKDIR /usr/src/myapp
RUN g++ -o myapp hello-main.cpp
CMD ["./myapp"]
