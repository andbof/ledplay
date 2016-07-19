#!/bin/bash

NAME=ledplay

set -e
set -x

TMP=$(mktemp -d)

rm -f ${NAME}.zip

cp ${NAME}-B.Cu.gbr ${TMP}/${NAME}.GBL
cp ${NAME}-B.Mask.gbr ${TMP}/${NAME}.GBS
cp ${NAME}-B.SilkS.gbr ${TMP}/${NAME}.GBO
cp ${NAME}.drl ${TMP}/${NAME}.TXT
cp ${NAME}-Edge.Cuts.gbr ${TMP}/${NAME}.GML
cp ${NAME}-F.Cu.gbr ${TMP}/${NAME}.GTL
cp ${NAME}-F.Mask.gbr ${TMP}/${NAME}.GTS
cp ${NAME}-F.SilkS.gbr ${TMP}/${NAME}.GTO
cp ${NAME}-GND.Cu.gbr ${TMP}/${NAME}.GL2
cp ${NAME}-VCC.Cu.gbr ${TMP}/${NAME}.GL3

OLD=$(readlink -e .)
pushd ${TMP}

zip -9 ${OLD}/${NAME}.zip *

popd
