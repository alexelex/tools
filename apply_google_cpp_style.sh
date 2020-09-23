#!/bin/bash
clang-format --sort-includes --style=Google $1 > formated
cat formated | $1
rm formated
