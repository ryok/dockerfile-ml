FROM nvidia/cuda:9.0-cudnn7-devel

# Install some dependencies
RUN apt-get update && apt-get -y upgrade && apt-get install -y \
    build-essential \
    libssl-dev \
    libreadline-dev \
    zlib1g-dev \
    language-pack-ja \
    openssh-server \
    ufw \
    curl \
    vim \
    git \
    wget \
    unzip \
    nodejs \
    npm \
    tmux \
    graphviz \
    sqlite3 \
    python3-pip \
    python3-dev

ADD requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt

EXPOSE 8888

ENTRYPOINT ["jupyter","lab","--ip=0.0.0.0","--port=8888","--allow-root","--NotebookApp.token=''"]
