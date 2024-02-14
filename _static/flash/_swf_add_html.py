import os
import re

template_text = """<!DOCTYPE html>
<html lang="es-es">

  <head>
    <meta charset="UTF-8">
    <title>Infografías de energía</title>
  </head>
   
  <body style="text-align:center;">
    <script src="../ruffle/ruffle.js"></script>
    <object type="application/x-shockwave-flash"
            data="{0}.swf" width="900" height="600">
            <param name="movie" value="{0}.swf">
    </object>
  </body>

</html>
"""


def main():
   listfiles = [f for f in os.listdir('.') if f[-4:].lower()=='.swf']
   for file in listfiles:
      basefile = file[:-4]
      if not os.path.exists(basefile + '.html') or True:
         print(basefile)
         html_data = template_text.format(basefile)
         with open(basefile + '.html', 'w', encoding='utf-8') as fo:
            fo.write(html_data)

main()
