#!/bin/bash
echo "threads,cities,capitals,megatests_per_sec"

for t in 1 2 4 6 8
do
  for n in 2 3 4 5 10 15 20 30 40 50
  do
#     g++   proj03.cpp  -DNUMT=$t -DNUMCAPITALS=$n  -o proj03  -lm  -fopenmp
     /opt/homebrew/opt/llvm/bin/clang++ -Xpreprocessor -fopenmp \
  -I/opt/homebrew/opt/llvm/include -L/opt/homebrew/opt/llvm/lib -lomp -std=c++11 -lm -o proj03 proj03.cpp -DNUMT=$t -DNUMCAPITALS=$n
    ./proj03
  done
done
