#!/bin/sh

set -x

Rscript --vanilla -e "methodsTest::newTest()"
Rscript --vanilla -e "library(methodsTest); newTest()"

