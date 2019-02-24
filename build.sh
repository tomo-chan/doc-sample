#!/bin/bash

set -ue

asciidoctor -D dist src/index.adoc
cp -r src/images dist