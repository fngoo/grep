#!/bin/bash
output=$output
cd $output/3_js
rg  -oPHn  "pwd ........................." *.js >>   $output/4_grep.txt
rg  -oPHn  "pwd:........................." *.js >>   $output/4_grep.txt
rg  -oPHn  "pwd=........................." *.js >>   $output/4_grep.txt
rg  -oPHn  "pass ........................" *.js >>   $output/4_grep.txt
rg  -oPHn  "pass:........................." *.js >>   $output/4_grep.txt
rg  -oPHn  "pass=........................." *.js >>   $output/4_grep.txt
rg -oPHn "account ........................." *.js >> $output/4_grep.txt
rg -oPHn "account:........................." *.js >> $output/4_grep.txt
rg -oPHn "account=........................." *.js >> $output/4_grep.txt
rg -oPHn "addr ........................." *.js >> $output/4_grep.txt
rg -oPHn "addr:........................." *.js >> $output/4_grep.txt
rg -oPHn "addr=........................." *.js >> $output/4_grep.txt
rg -oPHn "admin ........................." *.js >> $output/4_grep.txt
rg -oPHn "admin:........................." *.js >> $output/4_grep.txt
rg -oPHn "admin=........................." *.js >> $output/4_grep.txt
rg -oPHn "ip ........................." *.js >> $output/4_grep.txt
rg -oPHn "ip:........................." *.js >> $output/4_grep.txt
rg -oPHn "ip=........................." *.js >> $output/4_grep.txt
rg -oPHn "manager ........................." *.js >> $output/4_grep.txt
rg -oPHn "manager:........................." *.js >> $output/4_grep.txt
rg -oPHn "manager=........................." *.js >> $output/4_grep.txt
rg -oPHn "phone ........................." *.js >> $output/4_grep.txt
rg -oPHn "phone:........................." *.js >> $output/4_grep.txt
rg -oPHn "phone=........................." *.js >> $output/4_grep.txt
rg -oPHn "priva ........................." *.js >> $output/4_grep.txt
rg -oPHn "priva:........................." *.js >> $output/4_grep.txt
rg -oPHn "priva=........................." *.js >> $output/4_grep.txt
rg -oPHn "root ........................." *.js >> $output/4_grep.txt
rg -oPHn "root:........................." *.js >> $output/4_grep.txt
rg -oPHn "root=........................." *.js >> $output/4_grep.txt
rg -oPHn "secret ........................." *.js >> $output/4_grep.txt
rg -oPHn "secret:........................." *.js >> $output/4_grep.txt
rg -oPHn "secret=........................." *.js >> $output/4_grep.txt
rg -oPHn "smpt ........................." *.js >> $output/4_grep.txt
rg -oPHn "smpt:........................." *.js >> $output/4_grep.txt
rg -oPHn "smpt=........................." *.js >> $output/4_grep.txt
rg -oPHn "token ........................." *.js >> $output/4_grep.txt
rg -oPHn "token:........................." *.js >> $output/4_grep.txt
rg -oPHn "token=........................." *.js >> $output/4_grep.txt
rg -oPHn "user ........................." *.js >> $output/4_grep.txt
rg -oPHn "user:........................." *.js >> $output/4_grep.txt
rg -oPHn "user=........................." *.js >> $output/4_grep.txt
rm -rf $output/3_js
cd /root/script/3_httprobe
sed -e '/+/d' $output/4_grep.txt | sed -e '/?/d' | sed -e '/!/d' | sed -e '/&/d' > 1.txt ; mv 1.txt $output/4_grep.txt
touch $output/4_gp.txt ; sort -u $output/4_grep.txt -o $output/4_gp.txt ; rm $output/4_grep.txt 
