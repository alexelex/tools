#!/bin/bash
ssh -A -L 8888:localhost:8888 {$1}.sas.yp-c.yandex.net
"add ya machine name instead if $1" > /dev/null
