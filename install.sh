#!/bin/bash

if [ $1 = "apache" ]; then
  apt update -y
  apt install apache2 -y
fi

if [ $1 = "gcc" ]; then
  apt update -y
  apt install build-essential gcc -y
fi
