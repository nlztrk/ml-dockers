FROM nvcr.io/nvidia/pytorch:23.01-py3
RUN export contver=1.03
RUN curl https://raw.githubusercontent.com/nlztrk/ml-dockers/main/req.in --output req.in
RUN pip3 install --upgrade -r req.in
