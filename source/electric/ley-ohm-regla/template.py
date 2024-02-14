# -*- coding: utf-8 -*-
import os
import codecs
import math
from jinja2 import Template


def main():
    with codecs.open('template.svg', 'r') as fi:
        svg_template = fi.read()
    template = Template(svg_template)
    data = template.render(draws=draws())
    with codecs.open('electric-ley-ohm-regla.svg', 'w', encoding='utf-8') as fo:
        fo.write(data)


def draws():
    draws = []
    draws = draws + draw_ohmios()
    draws = draws + draw_voltios()
    draws = draws + draw_amperios()
    return draws


def draw_ohmios():
    draws = []
    x_offset = 15
    y_offset = 115 - 0.5
    
    series = [1.0, 1.2, 1.5, 1.8, 2.2, 2.7, 3.3, 3.9, 4.7, 5.6, 6.8, 8.2]
    series = series + [r*10 for r in series] + [r*100 for r in series] + \
                      [r*1000 for r in series] + [r*10000 for r in series] + \
                      [r*100000 for r in series] + [r*1000000 for r in series] + [10000000]

    x_zoom = 270 / (math.log(series[-1]) - math.log(series[0]))

    for ohm in series:
        x = x_offset + x_zoom * (math.log(ohm) - math.log(series[0]))
        y1 = y_offset - 5
        y2 = y_offset
        draws.append('<line x1="{x1:.3f}" y1="{y1:.3f}" x2="{x2:.3f}" y2="{y2:.3f}" style="stroke:#000000;stroke-width:0.15" />'.format(x1=x, x2=x, y1=y1, y2=y2))
        ohm = resistor_to_str(ohm)
        y = x + 0.8
        x = - (y_offset - 6)
        draws.append(f'<text text-anchor="start" transform="rotate(-90)" x="{x:.3f}" y="{y:.3f}" style="font-size:0.6mm;stroke-width:2">{ohm}</text>'.format(ohm=ohm, x=x, y=y))
    return draws


def resistor_to_str(ohm):
    suffix = ''
    if ohm >= 1000000:
        ohm = ohm / 1000000
        suffix = 'M'
    elif ohm >= 1000:
        ohm = ohm / 1000
        suffix = 'K'

    if ohm >= 10:
        ohm = str(int(ohm + 0.1))
    else:
        ohm = str(round(ohm+0.01, 1))
    return ohm + suffix + 'Ω'


def draw_voltios():
    draws = []
    
    x_offset = 15
    y_offset = 15 - 0.5
    series_init = 1.0/100000
    series_end = 100
    
    series = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    series = [r/100000 for r in series] + [r/10000 for r in series] + \
             [r/1000 for r in series] + [r/100 for r in series] + \
             [r/10 for r in series] + series + \
             [r*10 for r in series] + [series_end]

    x_zoom = 270 / ((math.log(series_end) - math.log(series_init)))

    for volts in series:
        x = x_offset + x_zoom * (math.log(volts) - math.log(series_init))
        y1 = y_offset
        y2 = y_offset + 5
        draws.append('<line x1="{x1:.3f}" y1="{y1:.3f}" x2="{x2:.3f}" y2="{y2:.3f}" style="stroke:#000000;stroke-width:0.15" />'.format(x1=x, x2=x, y1=y1, y2=y2))
        volts = volts_to_str(volts)
        y = x + 0.8
        x = - (y_offset + 6)
        draws.append(f'<text text-anchor="end" transform="rotate(-90)" x="{x:.3f}" y="{y:.3f}" style="font-size:0.6mm;stroke-width:2">{volts}</text>'.format(volts=volts, x=x, y=y))


    series = [1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8, 1.9, 2.2, 2.4, 2.6, 2.8, 3.5, 4.5, 5.5, 6.5, 7.5, 8.5, 9.5]
    series = [r/100000 for r in series] + [r/10000 for r in series] + \
             [r/1000 for r in series] + [r/100 for r in series] + \
             [r/10 for r in series] + series + \
             [r*10 for r in series]

    for volts in series:
        x = x_offset + x_zoom * (math.log(volts) - math.log(series_init))
        y1 = y_offset
        y2 = y_offset + 3
        draws.append('<line x1="{x1:.3f}" y1="{y1:.3f}" x2="{x2:.3f}" y2="{y2:.3f}" style="stroke:#000000;stroke-width:0.15" />'.format(x1=x, x2=x, y1=y1, y2=y2))

    return draws


def volts_to_str(volts):
    if volts >= 1:
        suffix = ''       
    elif volts >= 0.001:
        volts = volts * 1000
        suffix = 'm'
    else:
        volts = volts * 1000000
        suffix = 'u'

    if volts >= 1:
        volts = str(int(volts + 0.1))
    else:
        volts = str(round(volts + 0.001, 2))
        
    return volts + suffix + 'V'


def draw_amperios():
    draws = []
    
    x_offset = 15 + 270
    y_offset = 145 - 0.5
    series_init = 1.0/10000000
    series_end = 1
    
    series = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    series = [r/10000000 for r in series] + [r/1000000 for r in series] + \
             [r/100000 for r in series] + [r/10000 for r in series] + \
             [r/1000 for r in series] + [r/100 for r in series] + \
             [r/10 for r in series] + [series_end]

    x_zoom = 270 / ((math.log(series_end) - math.log(series_init)))

    for amps in series:
        x = x_offset - x_zoom * (math.log(amps) - math.log(series_init))
        y1 = y_offset - 2
        y2 = y_offset + 5
        draws.append('<line x1="{x1:.3f}" y1="{y1:.3f}" x2="{x2:.3f}" y2="{y2:.3f}" style="stroke:#000000;stroke-width:0.15" />'.format(x1=x, x2=x, y1=y1, y2=y2))
        amps = amps_to_str(amps)
        y = x + 0.8
        x = - (y_offset + 6)
        draws.append(f'<text text-anchor="end" transform="rotate(-90)" x="{x:.3f}" y="{y:.3f}" style="font-size:0.6mm;stroke-width:2">{amps}</text>'.format(amps=amps, x=x, y=y))


    series = [1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7, 1.8, 1.9, 2.2, 2.4, 2.6, 2.8, 3.5, 4.5, 5.5, 6.5, 7.5, 8.5, 9.5]
    series = [r/10000000 for r in series] + [r/1000000 for r in series] + \
             [r/100000 for r in series] + [r/10000 for r in series] + \
             [r/1000 for r in series] + [r/100 for r in series] + \
             [r/10 for r in series]

    for amps in series:
        x = x_offset - x_zoom * (math.log(amps) - math.log(series_init))
        y1 = y_offset - 2
        y2 = y_offset + 3
        draws.append('<line x1="{x1:.3f}" y1="{y1:.3f}" x2="{x2:.3f}" y2="{y2:.3f}" style="stroke:#000000;stroke-width:0.15" />'.format(x1=x, x2=x, y1=y1, y2=y2))

    # Volts mark
    x = x_offset - x_zoom * (math.log(10/1000000) - math.log(series_init))
    y1 = y_offset + 15
    y2 = y_offset + 22
    draws.append('<line x1="{x1:.3f}" y1="{y1:.3f}" x2="{x2:.3f}" y2="{y2:.3f}" style="stroke:#000000;stroke-width:0.15" />'.format(x1=x, x2=x, y1=y1, y2=y2))

    return draws

def amps_to_str(volts):
    if volts >= 1:
        suffix = ''       
    elif volts >= 0.001:
        volts = volts * 1000
        suffix = 'm'
    else:
        volts = volts * 1000000
        suffix = 'u'

    if volts >= 1:
        volts = str(int(volts + 0.1))
    else:
        volts = str(round(volts + 0.001, 2))
        
    return volts + suffix + 'A'


main()
