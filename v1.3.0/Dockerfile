FROM python:3.6-buster

RUN apt-get update && apt-get install -y \
        python3-dev \
        python3-tk \
        python-opengl \
        libsm6 \
        libxext6 \
        libglib2.0-0 \
        libxrender1 \
        libgeos-dev \
        pkg-config \
        libhdf5-dev

# update pip
RUN python -m pip install --upgrade pip

WORKDIR /usr/src

RUN git clone --depth 1 --branch v1.3.0 https://github.com/BerkeleyAutomation/gqcnn.git

WORKDIR /usr/src/gqcnn

RUN ./scripts/downloads/download_example_data.sh
RUN ./scripts/downloads/models/download_models.sh
RUN pip install numpy && pip install .

RUN mkdir -p /usr/tmp
WORKDIR /usr/tmp

COPY tensorflow.sh .

RUN chmod +x tensorflow.sh
RUN ./tensorflow.sh

WORKDIR /usr/src/code

RUN pwd
CMD /bin/bash