#!/bin/bash

# check that everything is ok
R CMD check .

# build the code
cd ..
R CMD build EnipediaDataQualityBot

# install it so that it is accessible within the R environment
# sudo allows it to be accessible to all users
sudo R CMD INSTALL EnipediaDataQualityBot_0.1.tar.gz

