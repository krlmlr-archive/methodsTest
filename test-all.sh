#!/bin/sh

#rm -rf r-lib
mkdir r-lib
export R_LIBS_USER=$PWD/r-lib
Rscript --vanilla -e "install.packages('devtools', repos='http://cran.rstudio.com')"
for branch in depend depend-import import-setRefClass import-methods require; do
  echo "*************************************"
  echo "Testing branch $branch"
  echo "*************************************"
  Rscript --vanilla -e "library(methods); library(devtools); install_github('krlmlr/methodsTest@"$branch"')"
  r-lib/methodsTest/bin/test.sh
  echo "*************************************"
  echo "Finished testing branch $branch"
  echo "*************************************"
done

