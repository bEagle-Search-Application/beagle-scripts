#!/usr/bin/env bash

option=$1
beagleFrontDirectory=~/projects/beagle-front-project/
beagleBackDirectory=~/projects/beagle-project/

cd $beagleBackDirectory && ./docker/$option
cd $beagleFrontDirectory && ./docker/$option
