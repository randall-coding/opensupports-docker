#!/bin/bash
acorn build -t opensupports && \
acorn run -s mariadb-user:mariadb-user \
   -s opensupports:opensupports \
   -n open-supports opensupports

# acorn run -s opensupports:opensupports \
#    -v config,size=1Gi -v db,size=5Gi  \
#    -n open-supports opensupports
