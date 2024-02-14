:Date: 09/07/2023
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International


.. _python-booleanos:

El tipo Booleano
================
El tipo de dato booleano se utiliza para representar dos valores:
Verdadero (True) y Falso (False).
Estos valores booleanos son fundamentales en la programación, ya que
se utilizan para realizar decisiones y controlar el flujo de un programa.

La palabra **True** representa el valor verdadero, mientras que la palabra
**False** representa el valor falso. Ambas palabras deben escribirse con
la primera letra en mayúscula y las demás en minúscula, ya que Python
distingue entre mayúsculas y minúsculas (es Case Sensitive).

Los valores booleanos son el resultado de operaciones de comparación
o evaluaciones lógicas. Por ejemplo, si queremos comparar si dos
variables son iguales, podemos utilizar el operador de igualdad "==".
Si la comparación es verdadera, el resultado será True; de lo contrario,
será False.


Operadores de comparación
-------------------------
Estos operadores se utilizan para comparar dos valores. El resultado
siempre será un valor booleano, True o False.


.. list-table::
   :header-rows: 1
   :widths: 10 20 70

   * - Operador
     - Nombre
     - Descripción
   * - ==
     - Igual
     - **True** si el operando de la izquierda es igual que el de la derecha.

       **False** en caso contrario.
   * - !=
     - Distinto
     - **True** si el operando de la izquierda es distinto que el de la derecha.

       **False** en caso contrario.
   * - >
     - Mayor que
     - **True** si el operando de la izquierda es mayor que el de la derecha.

       **False** en caso contrario.
   * - <
     - Menor que
     - True si el operando de la izquierda es menor que el de la derecha.
       False en caso contrario.
   * - >=
     - Mayor o igual que
     - **True** si el operando de la izquierda es mayor o igual que el de la
       derecha.

       **False** en caso contrario.
   * - <=
     - Menor o igual que
     - **True** si el operando de la izquierda es menor o igual que el de la
       derecha.

       **False** en caso contrario.

Ejemplos::

   >>> 1 == 1
       True
   >>> 1 == 1.0
       True
   >>> 'Hola' == 'Mundo'
       False
   >>> 5 > 8
       False
   >>> 10 <= 12
       True
   >>> 'A' < 'B'
       True


Operadores lógicos
------------------
Los operadores booleanos se utilizan para realizar operaciones lógicas
entre valores booleanos (True y False) o expresiones que se pueden
evaluar como booleanas.


.. list-table::
   :header-rows: 1
   :widths: 20 80

   * - Operador
     - Descripción
   * - a and b
     - Si 'a' es falso, devuelve 'a'. Si 'a' es verdadero, devuelve 'b'.

       Solo es verdadero si 'a' y 'b' son verdaderos.
   * - a or b
     - Si 'a' es falso, devuelve 'a'. Si 'a' es verdadero, devuelve 'b'.

       Es verdadero si 'a' ó 'b' son verdaderos.
   * - not a
     - Si 'a' es falso, devuelve verdadero (True).

       Si 'a' es verdadero, devuelve falso (False).
   * - bool(a)
     - Si 'a' es cero o vacío, devuelve falso (False).

       En caso contrario, devuelve verdadero (True)

Ejemplos::

   >>> True and False
       False
   >>> False and True
       False
   >>> True and True
       True
   >>> True or False
       True
   >>> False or True
       True
   >>> False or False
       False
   >>> bool(0)
       False
   >>> bool(1)
       True
   >>> bool(7)
       True
   >>> bool(-1)
       True
