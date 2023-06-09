#!/usr/bin/env bash

set -eoux pipefail

trash output
venv/bin/python examples/wordcount.py --input datasets/kinglear.txt --output output/counts
