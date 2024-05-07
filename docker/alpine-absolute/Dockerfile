FROM alpine

RUN apk update && \
    apk add git vim make ncurses && \
    rm -rf /var/cache/apk/*

RUN git clone https://github.com/artem-y/toolconfig.git && \
    cp toolconfig/.vimrc ~/.vimrc && \
    cd toolconfig/scripts/ && \
    cp sep /usr/local/bin/ && \
    cp cpb /usr/local/bin/ && \
    ./nvimconfig && \
    cd - && rm -rf toolconfig

RUN wget https://github.com/artem-y/commit/releases/download/v0.1.2/bin.zip && \
    unzip bin.zip -d tempdir && \
    mv tempdir/bin/linux-arm/commit /usr/local/bin && \
    rm -rf tempdir bin.zip

WORKDIR /root
ENTRYPOINT ["sh"]
