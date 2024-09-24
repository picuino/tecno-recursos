:Date: 11/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-if-elif:

Sentencia ``elif``
==================
La sentencia ``elif`` es equivalente a escribir ``else: if`` y
se utiliza para evaluar múltiples condiciones como en una estructura
``if`` anidada, con la ventaja de no necesitar sangrías sucesivas.

Este es un ejemplo de la instrucción ``elif`` utilizada para traducir
notas numéricas a texto::

    nota = input('Introduce una nota: ')
    nota = float(nota)

    if nota < 5:
        print('Insuficiente')
    elif nota < 6:
        print('Suficiente')
    elif nota < 7:
        print('Bien')
    elif nota < 9:
        print('Notable')
    else:
        print('Sobresaliente')


Ejercicios
----------

#. Escribe un programa que clasifique un número entero como positivo,
   negativo o cero

   Pista::

      num = input('Introduce un número:')
      num = int(num)

      if num ... :


#. Escribe un programa que traduzca el mes del año en la estación
   a la cual pertenece ese mes. Los meses de cada estación son:

   * Invierno: 1, 2, 12
   * Primavera: 3, 4, 5
   * Verano: 6, 7, 8
   * Otoño: 9, 10, 11

   Pista::

      mes = input('Mes del año (en número):')
      mes = int(mes)

      if mes ... :


#. Escribe un programa que detecte si un número es una nota válida.
   Para ser una nota válida debe ser mayor o igual a 1 y menor o igual
   que 10. En el caso de que sea muy baja o muy alta, el programa avisará
   del error. Si la nota es válida, el programa lo escribirá en pantalla.


#. Números primos. Escribe un programa que verifique si un número positivo
   entre 1 y 10 es primo. En caso de no ser primo, escribe por qué número
   es divisible:

   * El número 1 no es primo por definición.
   * Los números 2, 3, 5 y 7 son primos.
   * Los números 4, 6, 8 y 10 son divisibles por 2. No son primos.
   * El número 9 es divisible por 3. No es primo.
   * Los números mayores que 10 deben dar error por ser demasiado grandes.

