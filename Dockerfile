# This Dockerfile should only be run from the root of the toolconfig repo

FROM alpine

RUN apk update && \
    apk add git neovim make ncurses && \
    rm -rf /var/cache/apk/*

COPY . /toolconfig

RUN cd toolconfig/scripts/ && \
    cp sep /usr/local/bin/ && \
    cp cpb /usr/local/bin/ && \
    ./nvimconfig && \
    cd - && rm -rf toolconfig

RUN GITHUB_API_RESPONSE=$(wget -qO- "https://api.github.com/repos/artem-y/commit/releases/latest") && \
    LATEST_RELEASE=$(echo $GITHUB_API_RESPONSE | grep -o '"tag_name": *"[^"]*"' | cut -d'"' -f4 | tr -d "\n") && \
    wget https://github.com/artem-y/commit/releases/download/$LATEST_RELEASE/bin.zip && \
    unzip bin.zip -d tempdir && \
    mv tempdir/bin/linux-arm/commit /usr/local/bin && \
    rm -rf tempdir bin.zip

WORKDIR /root
ENTRYPOINT ["sh"]
