
#!/bin/sh
#

html_name () {
    echo     $( echo "$1" | rev | gcut -s -d "/" -f -2 | rev | sed "s+/+.html+" )
}

# html_name=$( echo "$1" | rev | gcut -s -d "/" -f -2 | rev | sed "s+/+.html+" )
html_name=$(html_name $1)

cat start.txt > $html_name
curl $1 | grep 'Link for access' | grep 'href[*]*' >> $html_name
cat end.txt >> $html_name
echo "open $html_name"
open $html_name

