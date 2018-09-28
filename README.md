# e2m3u2bouquet-tools
A set of tools for e2m3u2bouquet:

# e2m3u2bouquet (tvg-name) rather than tvg-id
Useful if your provider isn't a big supporter of Engima2 and uss the tvg-name tag for channel names rather than tvg-id

## Current Version v0.7.6

### Installation (Assuming you have the Suls Plugin Installed)
wget 'https://raw.githubusercontent.com/stingray82/e2m3u2bouquet-tools/master/e2m3u2bouquet-name.py' -O '/usr/lib/enigma2/python/Plugins/Extensions/E2m3u2bouquet/e2m3u2bouquet.py' && rm /usr/lib/enigma2/python/Plugins/Extensions/E2m3u2bouquet/e2m3u2bouquet.pyo && wget -O /dev/null -q http://127.0.0.1/web/powerstate?newstate=3

### Installation (Assuming Script Only) - Will require you to mannually update the path
wget 'https://raw.githubusercontent.com/stingray82/e2m3u2bouquet-tools/master/e2m3u2bouquet-name.py' -O 'Path to File/e2m3u2bouquet.py'
