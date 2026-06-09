"""
   Find po files without base file
"""
import os
import re


def main():
    process_files('../../locale/en/LC_MESSAGES', '..')
    input('Press Enter')


def process_files(po_path, rst_path):
    po_names = [f for f in os.listdir(po_path)]
    for po_name in po_names:
        po_name_long = os.path.join(po_path, po_name)
        if os.path.isfile(po_name_long):
            basename, ext = os.path.splitext(po_name)
            if ext in ['.po']:
                rst_name_long = os.path.join(rst_path, basename + '.rst')
                if not os.path.exists(rst_name_long):
                    print('po file without base:', po_name)
    for d in po_names:
        if os.path.isdir(d):
            process_files(os.path.join(po_path, d), os.path.join(rst_path, d)) 


main()
