#!/bin/bash

for dir in extended_test_data/results/*
do
  cmp --silent "${dir}/analyze_2019-10-25.json" "${dir}/analyze.json"

  if [ $? -ne 0 ]; then
    vi -o "${dir}/two_fer.ex" "${dir}/analyze_2019-10-25.json" "${dir}/analyze.json";
  fi
done