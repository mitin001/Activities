cat "$1" | awk -F'[_ .]' '{print "<asset-clip ref=\"r2\" offset=\""NR"s\" name=\"69\" start=\""($2*60+$3)$4"/1000s\" duration=\"1s\" format=\"r3\" tcFormat=\"NDF\" audioRole=\"dialogue\"/>"}'
