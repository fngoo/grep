#!/bin/bash
output=$output
rg  -oPH  "pwd............." *.js|tee -a   $output/4_grep.txt
rg  -oPH  "pass................" *.js|tee -a   $output/4_grep.txt
rg  -oPH  "key............." *.js|tee -a   $output/4_grep.txt
rg  -oPH  "secret............." *.js|tee -a   $output/4_grep.txt
rg  -oPH  "user............." *.js|tee -a   $output/4_grep.txt
rg  -oPH  "admin..................." *.js|tee -a   $output/4_grep.txt
rg  -oPH  "root..........." *.js|tee -a   $output/4_grep.txt
rg  -oPH  "manager..........." *.js|tee -a   $output/4_grep.txt
rg  -oPH  "token............." *.js|tee -a   $output/4_grep.txt
rg  -oPH  "account............." *.js|tee -a   $output/4_grep.txt
rg  -oPH  "id............." *.js|tee -a   $output/4_grep.txt
rg  -oPH  "phone............." *.js|tee -a   $output/4_grep.txt
rg  -oPH  "ip............." *.js|tee -a   $output/4_grep.txt
rg  -oPH  "addr............." *.js|tee -a   $output/4_grep.txt
rg  -oPH  "priva............." *.js|tee -a   $output/4_grep.txt
rg  -oPH  "smpt..............." *.js|tee -a   $output/4_grep.txt
