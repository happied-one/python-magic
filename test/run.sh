#!/bin/sh


# ensure we can use unicode filenames in the test
export LC_ALL=en_US.UTF-8
THISDIR=`dirname $0`
export PYTHONPATH=${THISDIR}/..

echo "python2.6"
python2.6 ${THISDIR}/test.py
python2.6 ${THISDIR}/libmagic_test.py
echo "python2.7"
python2.7 ${THISDIR}/test.py
python2.7 ${THISDIR}/libmagic_test.py
echo "python3"
python3 ${THISDIR}/test.py
python3 ${THISDIR}/libmagic_test.py
