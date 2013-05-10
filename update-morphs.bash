#!/bin/bash

#assuming that you have the whole apertium tree in your source dir. and you are in kir-uzb directory

python3 ../../trunk/apertium-tools/trim-lexc.py apertium-kir-uzb.kir-uzb.dix ../apertium-kir/apertium-kir.kir.lexc ../apertium-uzb/apertium-uzb.uzb.lexc

cp /tmp/apertium-kir.kir.lexc.trimmed apertium-kir-uzb.kir.lexc
cp /tmp/apertium-uzb.uzb.lexc.trimmed apertium-kir-uzb.uzb.lexc

DIFF=$(diff ../apertium-kir/apertium-kir.kir.twol apertium-kir-uzb.kir.twol)
if [ "$DIFF" != "" ]; then
	cp ../apertium-kir/apertium-kir.kir.twol apertium-kir-uzb.kir.twol
fi;
cp ../apertium-kir/apertium-kir.kir.rlx apertium-kir-uzb.kir-uzb.rlx

DIFF=$(diff ../apertium-uzb/apertium-uzb.uzb.twol apertium-kir-uzb.uzb.twol)
if [ "$DIFF" != "" ]; then
	cp ../apertium-uzb/apertium-uzb.uzb.twol apertium-kir-uzb.uzb.twol
fi;
cp ../apertium-uzb/apertium-uzb.uzb.rlx apertium-kir-uzb.uzb-kir.rlx

exit 0


