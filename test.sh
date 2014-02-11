#!/bin/sh
Rscript -e "methodsTest::newTest()"
Rscript -e "library(methodsTest); newTest()"

