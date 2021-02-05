#!/bin/bash
#
# Usage ./runexample example01 [--debug]
# Will example and print out as pdf/png

EXAMPLE=$1
DEBUG=""
if [ "$2" == "--debug" ]; then
    DEBUG="--debug-jvm"
fi

if [ -z $EXAMPLE]; then
    echo "Usage: ./runexample example01 [--debug]"
    exit 1
fi
 

RUN_PATH="$(pwd)/$EXAMPLE"
MFP_PATH=$HOME/dev/mfp/mapfish-print

echo "DEBUG=$DEBUG"
echo "RUN_PATH: $RUN_PATH"
echo "MFP_PATH=$MFP_PATH"

cd $MFP_PATH
$MFP_PATH/gradlew print $DEBUG -PprintArgs="-config $RUN_PATH/config.yaml -spec $RUN_PATH/requestData.json -output $RUN_PATH/output"
