# remove the first line of input.pem
# https://stackoverflow.com/a/339941/7249166
tail -n +2 "$1" > intermediate.txt

# remove the last line of input.pem
# https://stackoverflow.com/a/32043281/7249166
tail -n 1 intermediate.txt | wc -c | xargs -I {} truncate intermediate.txt -s -{}

# remove newline characters between the remaining lines
cat intermediate.txt | jq --slurp --raw-input --raw-output 'gsub("\n"; "")' > "$2"

# clean up
rm intermediate.txt
