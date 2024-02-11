#!/bin/bash

DATA=$1

touch options.json

echo $DATA > options.json

mv options.json /config/options.json

/run.sh
