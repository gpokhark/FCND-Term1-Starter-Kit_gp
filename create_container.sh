#!/bin/sh
docker run --network host -it \
        -v /home/gaurav/Other_Drive/Udacity/FCND-Term1-Starter-Kit_gp/:/FCND-Term1-Starter-Kit_gp/ \
        -v /home/gaurav/Other_Drive/Udacity/FCAFND/:/FCAFND/ \
        -v /home/gaurav/Other_Drive/Udacity/FCND_Projects/:/FCND_Projects/ \
        fcnd
