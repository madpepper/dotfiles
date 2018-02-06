#!/bin/sh

curl wttr.in/~川崎市麻生区?M0nQT | sed 's/^.\{15\}//g' | sed '2,6d'

