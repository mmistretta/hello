FROM gcc:4.9

COPY . /usr/src/myapp
RUN touch /tmp/healthy
WORKDIR /usr/src/myapp
RUN g++ -o myapp counter-main.cpp
CMD ["./myapp"]
