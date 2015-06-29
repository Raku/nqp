#!/bin/bash

# this is just so it doesn't get lost but will be incorporated into
# HLL::Compiler or Perl6::Compiler

STARTDIR=$PWD
RAKUDO_PREFIX="$HOME/rakudo/rakudo/install/share"
WORKING_PATH="$HOME/rakudo/one-jar"

echo "setting up..."
mkdir -p "$WORKING_PATH"
cp -r "$RAKUDO_PREFIX/../../nqp/tools/jvm/one-jar-bootstrap/." "$WORKING_PATH"
cd $WORKING_PATH
echo "copying jars..."
cp -rv "$RAKUDO_PREFIX/nqp/lib/." "$WORKING_PATH/lib/" # wonky, with the *...
cp -rv "$RAKUDO_PREFIX/nqp/runtime/." "$WORKING_PATH/lib/"
cp -rv "$RAKUDO_PREFIX/nqp/runtime/." "$WORKING_PATH/lib/"
cp -rv "$RAKUDO_PREFIX/perl6/runtime/." "$WORKING_PATH/lib/"
cp -rv "$RAKUDO_PREFIX/perl6/lib/." "$WORKING_PATH/lib/"
echo "compiling wrapper..."
cd "$WORKING_PATH/main"
CLASSPATH=../lib/* javac org/perl6/rakudo/StandaloneJARWrapper.java
jar cf MyApp.jar .
# cd ..

# need to do copying of the --target=jar output before we can jar, actually

echo "now copy the .jar file(s) created with"
echo "\tperl6-j --target=jar --output=\$FILE to $WORKING_PATH/lib/"
echo "and package your jar with"
echo 'jar -cfvm $TARGET_JAR_FILENAME boot-manifest.mf .'
echo "omitted: I haven't figured out a way how to adjust the entry jar in StandaloneJARWrapper"
echo "but this is mostly just notes anyway, and will become more convenient in the future"

# echo "running"

# RAKUDO_FATJAR_STANDALONE=1 java -jar boot-jar.jar

# echo "done"

cd $STARTDIR
