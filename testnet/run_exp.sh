#!/bin/bash

microtime() {
    python3 -c 'import time; print(time.time())'
}

#echo "run,method,depth,iterations,time,outer_time"

for RUN in {0..5}
do

  for METHOD in compute_iterations
  do

    for DEPTH in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
    #for ((DEPTH=2; TIME_MS<=20; TIME_MS+=2))
    do

      for TIME_MS in 20000 18000 16000 14000 12000 10000
      #for ((TIME_MS=10000; TIME_MS<=20000; TIME_MS+=500))
      do
        TIMEOUT="$(echo "20 + ${TIME_MS} / 1000" | bc)"
        START=$(microtime)
        ITERATIONS="$(gtimeout ${TIMEOUT}s dfx canister --network="testnet" call canister_0 ${METHOD} "(${TIME_MS} : nat, ${DEPTH} : nat)" | grep -Eo "[0-9_]+" | tr -d _ )"
        END=$(microtime)
        OUTER_TIME=$(echo "${END} - ${START}" | bc)
        if [ -n "${ITERATIONS}" ]; then
          TIME="$(echo "${TIME_MS} * 0.001" | bc)"
          echo "$RUN,$METHOD,$DEPTH,$ITERATIONS,$TIME,$OUTER_TIME"
        fi
      done

    done

  done


  # for METHOD in compute_time
  # do

  #   #for DEPTH in 20 18 16 14 12 10 8 6 4 2 1 0
  #   for DEPTH in 19 20
  #   do

  #     #for ITERATIONS in 500 400 300 200 100
  #     for ((ITERATIONS=50; ITERATIONS<=1000; ITERATIONS+=50))
  #     do
  #       START=$(microtime)
  #       TIME_MS="$(dfx canister --network="testnet" call canister_0 ${METHOD} "(${ITERATIONS} : nat, ${DEPTH} : nat)" | grep -Eo "[0-9_]+" | tr -d _ )"
  #       END=$(microtime)
  #       OUTER_TIME=$(echo "${END} - ${START}" | bc)
  #       if [ -n "${TIME_MS}" ]; then
  #         TIME="$(echo "${TIME_MS} * 0.001" | bc)"
  #         echo "$RUN,$METHOD,$DEPTH,$ITERATIONS,$TIME,$OUTER_TIME"
  #       fi
  #     done

  #   done

  # done

done
