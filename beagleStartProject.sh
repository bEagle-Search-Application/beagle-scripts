#!/usr/bin/env bash

userId=$(id -u)
option=$1
beagleFrontDirectory=~/projects/beagle-front-project/
beagleBackDirectory=~/projects/beagle-project/

if [ $option == 'init' ]
then
  USER_ID=$userId docker-compose -f $beagleBackDirectory/docker-compose.yml build
  USER_ID=$userId docker-compose -f $beagleFrontDirectory/docker-compose.yml build
fi

if [ $option == 'up' ]
then
  USER_ID=$userId docker-compose -f $beagleBackDirectory/docker-compose.yml up -d
  USER_ID=$userId docker-compose -f $beagleFrontDirectory/docker-compose.yml up -d
fi

if [ $option == 'down' ]
then
  USER_ID=$userId docker-compose -f $beagleBackDirectory/docker-compose.yml down
  USER_ID=$userId docker-compose -f $beagleFrontDirectory/docker-compose.yml down
fi
