#!/bin/bash
#
# Usage ./runme.sh [--debug]
# Will example and print out as pdf/png

#EXAMPLE=$1
DEBUG=""
if [ "$2" == "--debug" ]; then
    DEBUG="--debug-jvm"
fi

#if [ -z $EXAMPLE ]; then
#    echo "Usage: ./runexample example01 [--debug]"
#    exit 1
#fi
 
TIMESTAMP=`date -u +"%Y-%m-%dT%H%M%S"`
RUN_PATH="$(pwd)"
MFP_PATH=$HOME/dev/mfp/mapfish-print

echo "DEBUG=$DEBUG"
echo "RUN_PATH: $RUN_PATH"
echo "MFP_PATH=$MFP_PATH"

cd $MFP_PATH
$MFP_PATH/gradlew print $DEBUG -PprintArgs="-config $RUN_PATH/config.yaml -spec $RUN_PATH/requestData.json -output $RUN_PATH/output-$TIMESTAMP"
ln -sf "$RUN_PATH/output-$TIMESTAMP.pdf" "$RUN_PATH/output.pdf"

#scaled variant:
$MFP_PATH/gradlew print $DEBUG -PprintArgs="-config $RUN_PATH/config.yaml -spec $RUN_PATH/requestData_zoomed-in.json -output $RUN_PATH/zoomed-output-$TIMESTAMP"
ln -sf "$RUN_PATH/zoomed-output-$TIMESTAMP.pdf" "$RUN_PATH/zoomed-output.pdf"

#Should be forbidden:
$MFP_PATH/gradlew print $DEBUG -PprintArgs="-config $RUN_PATH/config.yaml -spec $RUN_PATH/requestData_forbidden.json -output $RUN_PATH/forbidden-output-$TIMESTAMP"
ln -sf "$RUN_PATH/forbidden-output-$TIMESTAMP.pdf" "$RUN_PATH/forbidden-output.pdf"


# ln
