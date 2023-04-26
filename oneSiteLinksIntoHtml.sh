
#!/bin/sh
#
#
#html_name='index2.html'
echo "$1"
var=$1
echo "$var"
echo "${var#*/}"
echo "$var" | gcut -d '/' | cat
echo "https://library.vgu.edu.vn/books-ebooks/" | rev | gcut -s -d '/' -f -2 | rev | sed 's+/+.html+'
echo "$1" | rev | gcut -s -d '/' -f -2 | rev | sed 's+/+.html+'
base=${var##*/}
html_name=base
print $base
print $html_name
# print "Looking for Links to access in: $*"
# if [[ -z $1 ]]
# then
#
# 		https://library.vgu.edu.vn/books-ebooks/https://library.vgu.edu.vn/books-ebooks/print 'please add links to site'
# 		
# else 
#

cat start.txt > $html_name
for link in "$*"
		do
				# print 'inside for each'
				# print $link
				# curl $link | grep 'Link for access' | grep 'href[*]*' >> $html_name
		done
    cat end.txt >> $html_name
	# 
echo 'echo: open $html_name'
open $html_name
# fi
