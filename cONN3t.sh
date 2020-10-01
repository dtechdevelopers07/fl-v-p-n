#!/bin/bash

echo $SH_DATA;
response=$(curl -k -d "$SH_DATA&type=0" -X POST $API_LINK); 
STATE=$(echo $response | jq ."state" | sed -e 's/^"//' -e 's/"$//');
if [[ "$STATE" != "0" ]]
then
        exit 1;
fi
Found=$(echo $response | jq ."found");
if [[ "$Found" == "1" ]]
then
	URL_DATA=$(echo $response | jq ."details")
	URLS=($(echo $URL_DATA | php -r '$data="";while(false!==($line=fgets(STDIN))){$data.=$line;}$ip="ip";$proc="proc";foreach(json_decode(json_decode($data,true),true) as $value){echo "http://$value[$ip]/disconnect.php?user=$value[$proc]  ";}'))
	for i in "${URLS[@]}"; do
		IFS='?'; read -r -a url <<< "$i";
		echo "${url[@]}";
		curl -X POST -d "${url[1]}" "${url[0]}";
	done
	echo $URLS;
fi
exit 0;
