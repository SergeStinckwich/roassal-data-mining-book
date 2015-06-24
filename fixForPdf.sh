#!/usr/bin/env bash

get_pillar(){
    ./pharo --nodisplay Pharo.image eval --save "(Smalltalk globals at: #ConfigurationOfPillar) loadVersion: '0.15'"
}

echo load bleeding version pillar
echo does not fix for now the problem on the Pharo image given by official pillar script
get_pillar
