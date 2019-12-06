sudo docker build -t torch_spark image/

sudo docker run --runtime=nvidia -p 8888:8888 torch_spark
sudo docker run -p 8888:8888 -v /home/malchul/work/projects/3d_reconstruction/NeighbourNet/data/new_shape_net_only_points/:/home/jovyan/data my_spark_torch

