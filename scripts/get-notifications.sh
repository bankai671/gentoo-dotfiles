tiramisu -o "#source;#summary;#body" | while read line
do
	    source=$(cut -d ';' -f 1 <<< "$line")
		summary=$(cut -d ';' -f 2 <<< "$line")
		body=$(cut -d ';' -f 3 <<< "$line")
		herbe "$source" " " "$summary" " " "$body"
done
