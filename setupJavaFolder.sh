#!/usr/bin/env bash
if [ ! -d "classes" ]; then
  mkdir classes
fi
if [ ! -d "lib" ]; then
  mkdir lib
fi
if [ ! -d "test" ]; then
  mkdir test
fi
if [ ! -d "source" ]; then
  mkdir source
fi
echo "classes/**">>.gitignore

echo "Your folder structure setup sucessfully completed"