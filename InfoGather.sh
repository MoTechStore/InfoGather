#!/bin/bash
clear
figlet MoTech CyberSec
echo "" 
echo "PenTesting Course For Ethical Hackers :" | pv -qL 10 
echo ""
cowsay -f dragon "Enter Website To Gather Information :"
read website
echo ""
echo "" 
echo "Analyzing $website Ports :" | pv -qL 10 
nmap -sV $website
echo ""
echo ""
echo "Look $website CMS :" | pv -qL 10 
whatweb $website
echo ""
echo ""
echo "See if $website server is up by ping command :" | pv -qL 10 
ping -c 10 $website
echo ""
echo ""
echo "Another Important Information to look at :" | pv -qL 10 
dig $website
echo ""
echo ""
whois $website
echo ""
echo ""
echo "More DNS information Gathering :" | pv -qL 10 
dnsenum --noreverse $website
echo ""
echo ""
echo "Bruteforcing $website Subdomain , this will take time :" | pv -qL 10 
dnsmap $website
cowsay -f ghostbusters Check me for any error 
echo ""
cowsay -f gnu THANK YOU ,GOODBYE by MoTech CyberSec 

