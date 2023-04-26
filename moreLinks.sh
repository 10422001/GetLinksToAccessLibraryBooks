

#!/bin/sh
for link in "$*"
		do

html_name=$( echo "$1" | rev | gcut -s -d '/' -f -2 | rev | sed "s+/+.html+" )
print $html_name

cat start.txt > $html_name
				# print 'inside for each'
				# print $link
				curl $link | grep 'Link for access' | grep 'href[*]*' >> $html_name
		done
    cat end.txt >> $html_name
	# 
echo "open $html_name"
open $html_name
# fi
#
#

# echo "https://library.vgu.edu.vn/books-ebooks/" | rev | gcut -s -d '/' -f -2 | rev | sed 's+/+.html+'
