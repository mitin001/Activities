cat "$1" | jq '.[].href' | awk -F'["/]' '{print "lynx "$0" -dump > "$(NF-1)".txt"}'
