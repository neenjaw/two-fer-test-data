#!/bin/bash

extended_data="./extended_test_data/results"

for test_dir in "${extended_data}"/*
do
  number=$(basename "$test_dir")
  # touch "./mock_data/lib/${number}"
  echo "$test_dir"
  cp "${test_dir}/two_fer.ex" ./test_data/mock_data/lib/

  ./bin/elixir_analyzer two-fer ./test_data/mock_data/

  mv ./test_data/mock_data/analyze.json "$test_dir"
  rm ./test_data/mock_data/lib/two_fer.ex
done