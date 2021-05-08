"""Encuentra combinaciones de resistencias en paralelo que
no tengan decimales"""


def racional(value):
   if abs(int(value * 1) - (value * 1)) < 0.00001:
      return True
   return False


def main():
   resistencias = valores_resistencias()
   encuentra_dos_paralelos(resistencias)
   #encuentra_tres_paralelos(resistencias)


def valores_resistencias():
   resistencias = [r for r in range(1, 100)]
   resistencias.extend([r for r in range(100, 1000, 10)])
   resistencias.extend([r for r in range(1000, 10000, 100)])
   resistencias.append(1000000000)
   return resistencias


def encuentra_dos_paralelos(resistencias):
   print("\n\n-------------------------")
   for r1 in resistencias:
      for r2 in resistencias:
            r_p1 = 1/( 1/r1 + 1/r2)
            if racional(r_p1):
               print("%02d // %02d  =  %02d" % (r1, r2, r_p1))


def encuentra_tres_paralelos(resistencias):
   print("\n\n-------------------------")
   for r1 in resistencias:
      for r2 in resistencias:
         for r3 in resistencias:
            r_p1 = 1/( 1/r1 + 1/r2)
            r_p2 = 1/( 1/r1 + 1/r3)
            r_p3 = 1/( 1/r2 + 1/r3)
            r_p4 = 1/( 1/r1 + 1/r2 + 1/r3)
            if racional(r_p1) and racional(r_p2) and racional(r_p3) and racional(r_p4):
               print("%02d // %02d // %02d  =  %02d" % (r1, r2, r3, r_p4))

main()
