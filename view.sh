#!/bin/bash

cd extended_test_data

for dir in results/*
do
  vi -o "${dir}/two_fer.ex" "${dir}/analyze_2019-10-11.json" "${dir}/analyze.json";
done