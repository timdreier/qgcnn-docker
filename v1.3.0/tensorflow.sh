#!/bin/bash

echo $TARGETARCH

case $TARGETARCH in

    "amd64")
	wget https://github.com/KumaTea/tensorflow-aarch64/releases/download/v1.15/tensorflow-1.15.5-cp36-cp36m-manylinux_2_24_aarch64.whl
  pip install tensorflow-1.15.5-cp36-cp36m-manylinux_2_24_aarch64.whl
  rm tensorflow-1.15.5-cp36-cp36m-manylinux_2_24_aarch64.whl
	;;
    "arm64")
	pip install tensorflow==1.15.5
	;;
esac