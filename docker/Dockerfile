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

COPY entrypoint.sh /

RUN conda install conda-build -y
RUN ./entrypoint.sh
RUN conda info --envs

# Expose ports for jupyter notebook
EXPOSE 8888/tcp