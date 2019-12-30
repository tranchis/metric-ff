FROM ubuntu:18.04


RUN apt-get update && apt-get install -y curl make flex bison
RUN mkdir -p /metric-ff/
WORKDIR /metric-ff

RUN curl https://fai.cs.uni-saarland.de/hoffmann/ff/Metric-FF.tgz | tar -xvz

WORKDIR /metric-ff/Metric-FF
RUN make

RUN mkdir -p /pddl
WORKDIR /pddl

ENTRYPOINT ["/metric-ff/Metric-FF/ff"]
