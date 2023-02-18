FROM nvcr.io/nvidia/pytorch:23.01-py3
RUN export contver=1.01
RUN apt-get update
RUN apt install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install pip-tools
RUN curl https://raw.githubusercontent.com/nlztrk/ml-dockers/main/req.in --output req.in
RUN pip3 install --upgrade -r req.in
