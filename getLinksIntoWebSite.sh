#!/bin/sh
#
#
html_name='index2.html'
print $html_name
# print "Looking for Links to access in: $*"
# if [[ -z $1 ]]
# then
#
# 		print 'please add links to site'
# 		
# else 
#
cat start.txt > $html_name
for link in "$*"
		do
				print 'inside for each'
				print $link
				curl $link | grep 'Link for access' | grep 'href[*]*' >> $html_name
		done
    cat end.txt >> $html_name
	# 
echo 'open $html_name'
open $html_name
# fi
