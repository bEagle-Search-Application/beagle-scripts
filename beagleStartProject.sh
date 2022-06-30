#!/usr/bin/env bash

userId=$(id -u)
option=$1
beagleFrontDirectory=~/projects/beagle-front-project/
beagleBackDirectory=~/projects/beagle-project/

cd $beagleBackDirectory && ./docker/$1

