FROM nvcr.io/nvidia/pytorch:23.01-py3
RUN apt-get update
RUN apt install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install pip-tools

RUN curl https://raw.githubusercontent.com/nlztrk/ml-dockers/main/req.in --output req.in

#RUN pip-compile req.in \
#--unsafe-package torch \
#--unsafe-package torchvision \
#--unsafe-package tochaudio \
#--unsafe-package xgboost

RUN pip3 install -r req.in
