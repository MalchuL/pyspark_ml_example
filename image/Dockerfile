FROM jupyter/pyspark-notebook

USER root
ADD requirements.txt requirements.txt
RUN apt update
RUN apt -y install python3-rtree
RUN pip install -r requirements.txt

ENV PATH /usr/local/cuda/bin/:$PATH
ENV LD_LIBRARY_PATH /usr/local/cuda/lib:/usr/local/cuda/lib64
ENV NVIDIA_VISIBLE_DEVICES all
ENV NVIDIA_DRIVER_CAPABILITIES compute,utility


RUN mkdir data
