FROM jupyter/pyspark-notebook

USER root
ADD requirements.txt requirements.txt
#RUN apt update
#RUN apt -y install python3-rtree
RUN pip install -r requirements.txt



#ENV PATH /usr/local/cuda/bin/:$PATH
#ENV LD_LIBRARY_PATH /usr/local/cuda/lib:/usr/local/cuda/lib64
#ENV NVIDIA_VISIBLE_DEVICES all
#ENV NVIDIA_DRIVER_CAPABILITIES compute,utility

#Set up jupyter
RUN pip install --force-reinstall prompt-toolkit==2.0.10
RUN pip install jupyter-spark
#RUN pip install -I nbconvert==5.3.1
#RUN pip install -I tornado==4.2
RUN jupyter nbextension enable jupyter_spark --py
RUN jupyter serverextension enable --py jupyter_spark
RUN jupyter nbextension install --py jupyter_spark
RUN jupyter nbextension enable --py jupyter_spark
RUN jupyter nbextension enable --py widgetsnbextension


copy data data
#COPY pyspark_train.ipynb work/pyspark_train.ipynb
#RUN chmod 777 work/pyspark_train.ipynb

COPY spark_model.ipynb work/spark_model.ipynb
RUN chmod 777 work/spark_model.ipynb



ENTRYPOINT jupyter notebook --NotebookApp.token= --allow-root


