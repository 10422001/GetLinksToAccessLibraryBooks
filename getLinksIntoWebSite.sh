#!/bin/sh
#
#
html_name='index2.html'
print $html_name
print "Looking for Links to access in: $*"
if [[ -z $1 ]]
then

		print 'please add links to site'
		
else 

    cat start.txt > $html_name
		for each link ($*)
				print $link
				print 'inside for each'
				curl $link | grep 'Link for access' | grep 'href[*]*' >> $html_name
	#
 #    #curl https://library.vgu.edu.vn/databases-ejournals/ | grep 'Link for access' | grep 'href[*]*' >> index.html
 #    [[ ! -z $1]] && curl $1 | grep 'Link for access' | grep 'href[*]*' >> index.html
 #    [[ ! -z $2 ]] && curl $2 | grep 'Link for access' | grep 'href[*]*' >> index.html
 #    [[ -z $3 ]] && curl $2 | grep 'Link for access' | grep 'href[*]*' >> index.html
    cat end.txt >> $html_name
	# 
echo 'open $html_name'
open $html_name
fi
