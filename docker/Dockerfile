FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install -y wget git && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-4.3.11-Linux-x86_64.sh && \
    bash Miniconda3-4.3.11-Linux-x86_64.sh -b -p /opt/conda && \
    rm Miniconda3-4.3.11-Linux-x86_64.sh

ENV PATH /opt/conda/bin:$PATH

COPY env_fcnd_new.yml /
RUN conda env create -f env_fcnd_new.yml -v

# CMD ["source activate fcnd_1"]

# Expose ports for jupyter notebook
EXPOSE 8888/tcp

# start the jupyter notebook in server mode
#CMD ["jupyter","notebook","--ip=0.0.0.0","--port=8888","--no-browser","--allow-root", "--notebook-dir=/notebooks"]
