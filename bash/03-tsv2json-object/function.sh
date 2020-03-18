jq --slurp --raw-input 'split("\n") | map(capture("(?<name>.+)\\t(?<id>[0-9]+)")) | map({key: .id, value: .name}) | from_entries'
