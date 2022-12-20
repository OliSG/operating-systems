#!/bin/bash

#1
grep -Po '(?<=\s|^)(?<!\-|\+)0x[[:xdigit:]]+(?=\s|$)' $1

#2
grep -Po '\b[A-Za-z0-9.,:;]+@[A-Za-z0-9.-]+\.[A-Za-z0-9.-]{2,}\b' $1

#3
grep -Po '(?<=\s|^)[-+]?\d*\.\d+(?=\s|$)' $1

