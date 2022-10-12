#!/bin/sh

export DEBFULLNAME=${DEBFULLNAME:-FlightAware build automation}
export DEBEMAIL=${DEBEMAIL:-adsb-devs@flightaware.com}

TOP=$(dirname $0)
DIST=$1
OUT=$2

if [ -n "$OUT" ]
then
    OUT=$(realpath $OUT)
else
    OUT=$(realpath package-$DIST)
fi

cp -a $TOP/dhcpcd5-8.1.2 $OUT
cd $OUT

case "$DIST" in
    bullseye)
        ;;
    *)
        echo "Don't know how to build tcltls for a distribution named $DIST" >&2
        exit 1
        ;;
esac
