ARG TAG
FROM $TAG 

RUN apt-get update \
    && apt-get -y upgrade \
    && apt-get -y install sudo \
    && sudo apt-get -y install python-pip \
    && pip install autobahntestsuite

CMD cd /AutobahnTests \
    && export KITURA_NIO=1 \
    && rm -rf .build Package.resolved \
    && swift build \
    && bash -c "/AutobahnTests/.build/x86_64-unknown-linux/debug/WebSocketEchoServer &" \
    && sleep 5 \
    && wstest -m fuzzingclient \
