#!/bin/bash

set -ue

# ./asciidoctor.sh -D dist src/index.adoc
asciidoctor -a attribute-missing=warn --failure-level=WARN -D dist src/index.adoc
cp -r src/images dist

asciidoctor-pdf -r asciidoctor-pdf-cjk-kai_gen_gothic -D dist src/index.adoc