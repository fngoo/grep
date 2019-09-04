#!/bin/bash
output=$output
rg  -oPHn  "pwd..............................................................." *.js|tee -a   $output/4_grep.txt
rg  -oPHn  "pass..............................................................." *.js|tee -a   $output/4_grep.txt
rg  -oPHn  "key..............................................................." *.js|tee -a   $output/4_grep.txt
rg  -oPHn  "secret..............................................................." *.js|tee -a   $output/4_grep.txt
rg  -oPHn  "user..............................................................." *.js|tee -a   $output/4_grep.txt
rg  -oPHn  "admin..............................................................." *.js|tee -a   $output/4_grep.txt
rg  -oPHn  "root..............................................................." *.js|tee -a   $output/4_grep.txt
rg  -oPHn  "manager..............................................................." *.js|tee -a   $output/4_grep.txt
rg  -oPHn  "token..............................................................." *.js|tee -a   $output/4_grep.txt
rg  -oPHn  "account..............................................................." *.js|tee -a   $output/4_grep.txt
rg  -oPHn  "id..............................................................." *.js|tee -a   $output/4_grep.txt
rg  -oPHn  "phone..............................................................." *.js|tee -a   $output/4_grep.txt
rg  -oPHn  "ip..............................................................." *.js|tee -a   $output/4_grep.txt
rg  -oPHn  "addr..............................................................." *.js|tee -a   $output/4_grep.txt
rg  -oPHn  "priva..............................................................." *.js|tee -a   $output/4_grep.txt
rg  -oPHn  "smpt..............................................................." *.js|tee -a   $output/4_grep.txt
rm -rf $output/3_js
touch $output/4_gp.txt ; sort $output/4_grep.txt|uniq|tee -a 4_gp.txt ; rm $output/4_grep.txt 
