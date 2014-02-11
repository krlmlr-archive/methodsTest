#!/bin/sh

set -x

Rscript -e "methodsTest::newTest()"
Rscript -e "library(methodsTest); newTest()"

