#!/bin/bash
java org.antlr.v4.Tool LITTLE.g4
javac *.java
java Main $1 $2