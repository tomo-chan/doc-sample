#!/bin/bash

set -e

for file in `find ./src -type f -name '*_test.adoc'`; do
  echo -n "$file: "
  asciidoctor -a attribute-missing=warn --failure-level=WARN -D test/ $file && echo "OK"
done