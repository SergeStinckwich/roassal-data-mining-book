#!/usr/bin/env bash

IMAGE="http://moosetechnology.org/res/download/moose_image_5_1.zip"
SOURCES="http://files.pharo.org/get-files/40/sources.zip"

get_sources() {
    local tempszip="$(mktemp sourcesXXXXX.zip)"
    trap "rm '$tempszip'" EXIT
    wget ${CERTCHECK} --progress=bar:force --output-document="$tempszip" "$SOURCES"

    for f in $(zipinfo -1 "$tempszip"); do
        ext="${f##*.}"
        file=$(basename $f)
        if [ "$ext" == sources ]; then
            echo "PharoV40.$ext"
            unzip -qp  "$tempszip" "$f" > "PharoV40.$ext"
        fi
    done
}

get_image() {
    local tempzip="$(mktemp imageXXXXX.zip)"
    trap "rm '$tempzip'" EXIT
    wget ${CERTCHECK} --progress=bar:force --output-document="$tempzip" "$IMAGE"

    for f in $(zipinfo -1 "$tempzip"); do
        ext="${f##*.}"
        file=$(basename $f)
        if [ "$ext" == image -o "$ext" == changes ]; then
            echo "Pharo.$ext"
            unzip -qp  "$tempzip" "$f" > "Pharo.$ext"
        fi
    done
}

echo get sources
get_sources

echo get moose
get_image


./loadPillar.sh
./fixForPdf.sh



