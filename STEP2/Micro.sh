#!/bin/bash
java -cp '.:antlr-4.8-complete.jar' org.antlr.v4.Tool LITTLE.g4
javac -cp '.:antlr-4.8-complete.jar' *.java
java -cp '.:antlr-4.8-complete.jar' Main $1 $2