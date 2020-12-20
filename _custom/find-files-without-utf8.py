"""
   Find files not properly encoded with UTF-8 BOM signature
"""
import os
import subprocess 

extensions = ['.txt', '.rst']
excludes =['robots.txt', 'Apache License.txt',
           'SIL Open Font License.txt']

def main():
   process('..')
   input('Press Enter')

def process(path):
   longfiles = [os.path.join(path, f) for f in os.listdir(path)]
   for fname in longfiles:
      test_utf8(fname)
   for d in longfiles:
      if os.path.isdir(d):
         process(d)

def test_utf8(fname):
   if not os.path.splitext(fname)[1].lower() in extensions:
      return
   if os.path.basename(fname) in excludes:
      return
   with open(fname, 'rb') as fi:
      if (fi.read(2) != b'\xef\xbb'):
         print('Without utf8-sig: ' + fname)
         #subprocess.call(r'notepad.exe ' + fname)

main()
