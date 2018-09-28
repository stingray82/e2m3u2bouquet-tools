#!/bin/bash
wget -O /etc/enigma2/e2m3u2bouquet/config.xml "https://raw.githubusercontent.com/stingray82/e2m3u2bouquet-tools/master/config.xml"
clear
echo ""
echo "-----------------------------------------------------------------"
echo ""
echo "Welcome to the e2m3u Config Setup Generator"      
echo "-----------------------------------------------------------------"
# Ask for username and password
echo -n "Enter your username : "
read username
echo -n "Hello $username, Please enter your password : "
read password
sleep 1
echo "Adding username $username and password $password"
#sed "0,/<username>username<\/username>/s//<username>$username<\/username>/" $xml_file > temp
# Writing Username to XML File
sed -i 's/<username>*.*<\/username>/<username><![CDATA['$username']]><\/username>'/g /etc/enigma2/e2m3u2bouquet/config.xml
# Writing Passwrod to XML File
sed -i 's/<password>*.*<\/password>/<password><![CDATA['$password']]><\/password>'/g /etc/enigma2/e2m3u2bouquet/config.xml
echo "adding urls"
#Writing Provider to XML File
echo -n "Hello $username, Please enter your Providers Name : "
read provider
#sed -i 's/<name>*.*<\/name>/<name><![CDATA['$provider']]><\/name>'/g /etc/enigma2/e2m3u2bouquet/config.xml
sed -i 's/<name>*.*<\/name>/<name><![CDATA['$provider']]><\/name>'/g /etc/enigma2/e2m3u2bouquet/config.xml
echo -n "Hello $username, Please enter your Providers domain name and port i.e domain.com:2025: "
read domainport
#Writing Domain and Port to XML File
sed -i "s~<m3uurl>*.*<\/m3uurl>~<m3uurl><![CDATA[http://$domainport/get.php?username=USERNAME\&password=PASSWORD\&type=m3u_plus\&output=ts]]><\/m3uurl>"~g /etc/enigma2/e2m3u2bouquet/config.xml
sed -i "s~<epgurl>*.*<\/epgurl>~<epgurl><![CDATA[http://$domainport/xmltv.php?username=USERNAME\&password=PASSWORD]]><\/epgurl>"~g /etc/enigma2/e2m3u2bouquet/config.xml
echo -n "Hello $username, What is your providers recommend IPTV Player type i.e 5002: "
read iptvplayer
#Writing IPTV Player Number i.e 5002
sed -i 's/<streamtypetv>*.*<\/streamtypetv>/<streamtypetv><![CDATA['$iptvplayer']]><\/streamtypetv>'/g /etc/enigma2/e2m3u2bouquet/config.xml
echo -n "Hello $username, What is your providers recommend Vod Player type i.e 4097: "
read vodplayer
#Writing VOD Player Number i.e 4097
sed -i 's/<streamtypevod>*.*<\/streamtypevod>/<streamtypevod><![CDATA['$vodplayer']]><\/streamtypevod>'/g /etc/enigma2/e2m3u2bouquet/config.xml
echo "Configuration Complete"
