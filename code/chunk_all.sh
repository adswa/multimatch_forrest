#!/bin/bash

set -e
set -u

for run in $(seq 1 8); do
    for sub in sub-01 sub-02 sub-03 sub-04 sub-05 sub-06 sub-09 sub-10 \
        sub-14 sub-15 sub-16 sub-17 sub-18 sub-19 sub-20 sub-22 sub-23 sub-24 \
        sub-25 sub-26 sub-27 sub-28 sub-29 sub-30 sub-31 sub-32 sub-33 sub-34 sub-35 sub-36; do
            code/chunker.py sourcedata/studyforrest-data-eyemovementlabels/${sub}/${sub}_task-movie_run-${run}_events.tsv \
            sourcedata/studyforrest-data-annotations/segments/avmovie/locations_run-${run}_events.tsv \
            scanpaths/run-${run}
        done;
    done;
