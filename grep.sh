#!/bin/bash
output=$output
cd $output/3_js
rg  -oPHn  "pwd .................................................." *.js >>   $output/4_grep.txt
rg  -oPHn  "pwd:.................................................." *.js >>   $output/4_grep.txt
rg  -oPHn  "pwd=.................................................." *.js >>   $output/4_grep.txt
rg  -oPHn  "pass ................................................." *.js >>   $output/4_grep.txt
rg  -oPHn  "pass:.................................................." *.js >>   $output/4_grep.txt
rg  -oPHn  "pass=.................................................." *.js >>   $output/4_grep.txt
rg -oPHn "admin .................................................." *.js >> $output/4_grep.txt
rg -oPHn "admin:.................................................." *.js >> $output/4_grep.txt
rg -oPHn "admin=.................................................." *.js >> $output/4_grep.txt
rg -oPHn "manager .................................................." *.js >> $output/4_grep.txt
rg -oPHn "manager:.................................................." *.js >> $output/4_grep.txt
rg -oPHn "manager=.................................................." *.js >> $output/4_grep.txt
rg  -oPHn  "oracle" *.js >> $output/4_grep.txt
rg  -oPHn  "mysql" *.js >> $output/4_grep.txt
rg  -oPHn  "config" *.js >> $output/4_grep.txt
rg  -oPHn  "url:" *.js >> $output/4_grep.txt


rm -rf $output/3_js
cd /root/script/3_httprobe
sed -e '/+/d' $output/4_grep.txt | sed -e '/?/d' | sed -e '/!/d' | sed -e '/&/d' > 1.txt ; mv 1.txt $output/4_grep.txt
touch $output/4_gp.txt ; sort -u $output/4_grep.txt -o $output/4_gp.txt ; rm $output/4_grep.txt 
date "+%Y-%m-%d_%H:%M:%S" >> /root/date.txt ; echo 'js' >> /root/date.txt
