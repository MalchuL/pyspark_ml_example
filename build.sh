sudo docker build -t torch_spark image/

sudo docker run --runtime=nvidia -p 8888:8888 jupyter/pyspark-notebook
