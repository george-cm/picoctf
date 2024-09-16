#!/usr/bin/env bash

shopt -s globstar nullglob dotglob

for filename in "$1"/**/* ; do
	[ -e "$filename" ] || continue
	# read -rd '' content <"$filename"
	content=$(<"$filename")
	# echo "$filename"
	# echo "$content"
	if [[ $content =~ "picoCTF" ]]; then
		echo "$filename"
		grep -E "picoCTF\{.*?\}" -ohr <<< "$content"
	fi
done
