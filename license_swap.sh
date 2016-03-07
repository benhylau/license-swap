#!/bin/sh

LICENSE_TEXT=`cat license_text.txt | sed -z 's/\n/##NEWLINE_CHAR##/g'` && sed -z 's/\/\*.*\*\/\npackage/##LICENSE_HEADER##\npackage/' $1 | awk -v licenseText="$LICENSE_TEXT" '{ gsub("##LICENSE_HEADER##", licenseText); gsub("##NEWLINE_CHAR##", "\n"); print }' > $1.tmp && mv $1.tmp $1
