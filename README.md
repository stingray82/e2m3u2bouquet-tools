# e2m3u2bouquet-tools
A set of tools for e2m3u2bouquet:

## e2m3u2bouquet (tvg-name) rather than tvg-id
Useful if your provider isn't a big supporter of Engima2 and uss the tvg-name tag for channel names rather than tvg-id

### Current Version v0.7.6

#### Installation (Assuming you have the Suls Plugin Installed) - Run in Terminal or Putty
wget 'https://raw.githubusercontent.com/stingray82/e2m3u2bouquet-tools/master/e2m3u2bouquet-name.py' -O '/usr/lib/enigma2/python/Plugins/Extensions/E2m3u2bouquet/e2m3u2bouquet.py' && rm /usr/lib/enigma2/python/Plugins/Extensions/E2m3u2bouquet/e2m3u2bouquet.pyo && wget -O /dev/null -q http://127.0.0.1/web/powerstate?newstate=3

#### Installation (Assuming Script Only) - Will require you to mannually update the path
wget 'https://raw.githubusercontent.com/stingray82/e2m3u2bouquet-tools/master/e2m3u2bouquet-name.py' -O 'Path to File/e2m3u2bouquet.py'

## e2m3u2bouquet config generator (V0.01)
A helpful script for people who use a single provider or are testing channel lists and using suls will ask questions on the following and generate the appropriate config file

* Username
* Password
* Domain & Port (I.e domain.com:6829)
* IPTV Player type i.e (1, 4097, 5001, 5002)
* VOD Player type i.e (1, 4097, 5001, 5002)

### Run the script - Run in Terminal or Putty
wget 'https://raw.githubusercontent.com/stingray82/e2m3u2bouquet-tools/master/e2m3u-Config-Setup.sh' -O '/var/volatile/tmp/config.sh' && chmod 777 /var/volatile/tmp/config.sh && sed -i 's/\r$//' /var/volatile/tmp/config.sh && /var/volatile/tmp/config.sh

Answer the questions and it will generate your config file



