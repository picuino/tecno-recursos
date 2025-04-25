@set PATH=\Bin\xpdf;%PATH%

pdftopng -cfg /Bin/xpdf/.xpdfrc -gray -r 200 -aa yes -aaVector yes -freetype yes weather-station-electric.pdf out
rename out-000001.png weather-station-electric.png