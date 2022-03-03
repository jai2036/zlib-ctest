FROM ubuntu:latest 

# Turnoff the default behavior to ask timezone
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
  && apt-get install -y make \
    build-essential \
    cmake \
    tar \
  && apt-get clean 

ENV src /home/dev/app
WORKDIR $src
COPY . $src/

RUN  echo "Compilaton in progress.." && \
    cd $src/build && \
    bash ../run.sh

WORKDIR $src/build
CMD ["./zlibtest"]