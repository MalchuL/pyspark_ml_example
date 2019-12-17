## Overview

This full worked pipeline based on Spark, maked in docker

This is my baseline for this competition: https://www.drivendata.org/competitions/7/pump-it-up-data-mining-the-water-table/ which achieves **70% accuracy**

## Steps to reproduce

In first you must download data from [here](https://drive.google.com/open?id=1S5U_KWq_1krY66az11lxz166pEQmIbxm) and extract all data into *image/data* folder.

Then

1. Run this command to build docker image `sudo docker build -t spark_ml image/ #build image from root folder`
2. Run builded image as container `sudo docker run -p 8888:8888 spark_ml #Run image on 8888 port`
3. In your logs you can see a URL for open jupyter page.

