#!/bin/bash
java org.antlr.v4.Tool LITTLE.g4
javac -cp '.:org.antlr.v4.Tool LITTLE.g4' *.java
java -cp '.:org.antlr.v4.Tool LITTLE.g4' Main $1 $2