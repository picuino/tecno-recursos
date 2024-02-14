import os
import re


for f in os.listdir('.'):
    if 'electric' in f:
        nf = re.sub('electric', 'electronic', f)
        os.rename(f, nf)
        print(nf)
