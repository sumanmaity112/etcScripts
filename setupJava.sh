#!/usr/bin/env bash
echo "alias run='java -cp ../classes/:../lib/junit-4.12.jar:../lib/hamcrest-core-1.3.jar org.junit.runner.JUnitCore '">>~/.bash_profile
echo "alias compile='javac -cp ../source/:../lib/junit-4.12.jar -d ../classes/ '">>~/.bash_profile
printf "runAndCompile(){\n\tcompile \$1.java && run \$1\n}\nalias jtest=runAndCompile">>~/.bash_profile
