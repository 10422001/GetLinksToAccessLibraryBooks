
#!/bin/sh
#
#
read -A arr
print $arr[1]
print $arr[2]
# print $arr[3]
    cat start.txt > $html_name
for link in arr
		do
				print 'inside for each, link: link'
				# print $link
				# curl $link | grep 'Link for access' | grep 'href[*]*' >> $html_name
		done
    cat end.txt >> $html_name
	# 
echo 'open $html_name'

html_name='index2.html'
print $html_name
# open $html_name
# fi
