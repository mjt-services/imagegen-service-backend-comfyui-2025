FROM nvidia/cuda:12.4.1-runtime-ubuntu22.04
WORKDIR /app
RUN apt update && apt upgrade -y
RUN apt install -y wget git python3 python3-venv libgl1 libglib2.0-0 apt-transport-https libgoogle-perftools-dev bc python3-pip
COPY app/run.sh /app/run.sh
RUN chmod +x /app/run.sh

RUN mkdir /app/vendor

ENTRYPOINT ["/app/run.sh"]