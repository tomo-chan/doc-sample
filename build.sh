#!/bin/bash

set -ue

# ./asciidoctor.sh -D gh-pages src/index.adoc
asciidoctor -a attribute-missing=warn --failure-level=WARN -D gh-pages src/index.adoc
cp -r src/images gh-pages

asciidoctor-pdf -r asciidoctor-pdf-cjk-kai_gen_gothic -D gh-pages src/index.adoc