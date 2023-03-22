FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    tcpreplay \
    && rm -rf /var/lib/apt/lists/*

COPY pfcp-SD-DoS.py /app/
COPY pfcp-SM-DoS.py /app/
COPY pfcp-Flood.py /app/

WORKDIR /app

RUN pip3 install scapy
RUN pip3 install faker

ENTRYPOINT ["python3"]
CMD ["-h"]