#!/bin/bash
java -cp '.:org.antlr.v4.Tool' org.antlr.v4.Tool LITTLE.g4
javac -cp '.:org.antlr.v4.Tool' *.java
java -cp '.:org.antlr.v4.Tool' Main $1 $2