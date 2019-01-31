# e2m3u2bouquet-tools
A set of tools for e2m3u2bouquet:

## e2m3u2bouquet (tvg-name) rather than tvg-id
Useful if your provider isn't a big supporter of Engima2 and uses the tvg-name tag for channel names rather than tvg-id

### Current Version v0.8.2

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

## e2m3u2bouquet oottppxx modification (V0.8.2) - For use with Heinz
A script to associate all catchup channels with a bang !!! depreciated by oottppxx at Version 0.7.7 Modfied by stingray82 to work with the new structure of e2m3ubouquets.

This is designed to identify catchup channels for use with ootppxx Heinz Plugin. https://github.com/oottppxx/enigma2/tree/master/plugins/heinz

#### Installation (Assuming you have the Suls Plugin Installed) - Run in Terminal or Putty
wget 'https://raw.githubusercontent.com/stingray82/e2m3u2bouquet-tools/master/e2m3u2bouquet-bang.py' -O '/usr/lib/enigma2/python/Plugins/Extensions/E2m3u2bouquet/e2m3u2bouquet.py' && rm /usr/lib/enigma2/python/Plugins/Extensions/E2m3u2bouquet/e2m3u2bouquet.pyo && wget -O /dev/null -q http://127.0.0.1/web/powerstate?newstate=3

#### Installation (Assuming Script Only) - Will require you to mannually update the path
wget 'https://raw.githubusercontent.com/stingray82/e2m3u2bouquet-tools/master/e2m3u2bouquet-bang.py' -O 'Path to File/e2m3u2bouquet.py'

## Example of using e2m3ubouquets to generate CCTV Bouquets on Enigma2 Receivers using RTSP
Host it using free web hosting to generate your CCTV bouquets or even your lan storage server anywhere you can host a website
Contains a Picon that can be used an example M3U to upload.

**Given the fact it should have no effect on anyone I have asked that this modification is added to e2m3ubouquets and if accepted it will be depricated but the example m3u will stay as will the picon.**

#### Installation (Assuming you have the Suls Plugin Installed) - Run in Terminal or Putty
wget 'https://raw.githubusercontent.com/stingray82/e2m3u2bouquet-tools/master/e2m3u2bouquet-rtsp.py' -O '/usr/lib/enigma2/python/Plugins/Extensions/E2m3u2bouquet/e2m3u2bouquet.py' && rm /usr/lib/enigma2/python/Plugins/Extensions/E2m3u2bouquet/e2m3u2bouquet.pyo && wget -O /dev/null -q http://127.0.0.1/web/powerstate?newstate=3

#### Installation (Assuming Script Only) - Will require you to mannually update the path
wget 'https://raw.githubusercontent.com/stingray82/e2m3u2bouquet-tools/master/e2m3u2bouquet-rtsp.py' -O 'Path to File/e2m3u2bouquet.py'








