#!/bin/bash
clang-format --sort-includes --style=Google $1 > formated
diff formated $1
rm formated
