#!/usr/bin/env bash
set -x
PACKAGE=${PACKAGE:?Package should be defined}
TEST_DIR=${TEST_DIR:?Test deit sould be defined}

PACKAGE_DIR=$(python -c "import $PACKAGE; print $PACKAGE.__path__[0]")

py.test ${PACKAGE_DIR}/${TEST_DIR} $*

