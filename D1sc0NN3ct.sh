#!/bin/bash
response=$(curl -k -d "$SH_DATA&type=1&download=$STATS_BYTES_OUT&upload=$STATS_BYTES_IN&duration=$STATS_DURATION&real_ip=$IP_REAL&ip_remote=$IP_REMOTE" -X POST $API_LINK) echo $response;
exit 0;
