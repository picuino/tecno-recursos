:Date: 02/04/2024
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. _mecan-neumatic-simple-efecto:

Cilindro de simple efecto
=========================
Un cilindro de **simple efecto** es un cilindro cuyo vástago sale fuera
debido al aire comprimido que se introduce en la parte trasera.

El movimiento de entrada del vástago se realiza gracias a un muelle
que dispone de poca fuerza, por lo que no sirve para mover cargas
externas.

Este cilindro puede hacer fuerza hacia fuera, pero apenas hace fuerza al
moverse hacia dentro.

Los cilindros de simple efecto se pilotan mediante una **válvula 3/2**
que puede inyectar aire comprimido por una vía o dejar escapar el aire
comprimido del cilindro por esa misma vía hacia la atmósfera.

A continuación se muestra el esquema en reposo del cilindro de simple
efecto:

.. image:: neumatic/_images/neumatic-32-simple-0.png
   :alt: Pistón de simple efecto (dentro) comandado por válvula 3/2.
   :width: 320px
   :align: center

Cuando accionamos la válvula 3/2, el aire que proviene de la unidad de
mantenimiento pasa hacia la vía superior de la válvula y entra en la parte
posterior del cilindro. Como consecuencia, el cilindro se llena de aire
y el pistón sale del cilindro empujando la carga que tenga delante:

.. image:: neumatic/_images/neumatic-32-simple-1.png
   :alt: Pistón de simple efecto (fuera) comandado por válvula 3/2.
   :width: 320px
   :align: center

Para finalizar, al llevar a reposo la válvula 3/2, el aire comprimido
del interior del cilindro vuelve hacia atrás y sale por la vía de escape
de la válvula 3/2:

.. image:: neumatic/_images/neumatic-32-simple-2.png
   :alt: Pistón de simple efecto (entrando) comandado por válvula 3/2.
   :width: 320px
   :align: center

En el siguiente simulador, puedes probar a simular todos los movimientos
del cilindro de simple efecto:

.. raw:: html

   <div class="video-center">
   <iframe src="/neumatic/index.html?loadFile=single-32.txt"></iframe>
   </div>

Cilindro con carga
------------------
Si añadimos una carga para que el cilindro la arrastre y un regulador de 
flujo de aire para que el llenado se haga más lento, podremos ver cómo
el cilindro necesita una presión mínima antes de empezar a moverse:

.. figure:: neumatic/_images/neumatic-32-simple-3.png
   :alt: Pistón de simple efecto arrastrando 20kg de carga, saliendo.
   :width: 245px
   :align: center
   
   Pistón de simple efecto arrastrando 20kg de carga, saliendo.

En el siguiente simulador puedes simular el funcionamiento del cilindro
de simple efecto con carga:

.. raw:: html

   <div class="video-center">
   <iframe src="/neumatic/index.html?loadFile=single-32-flow.txt"></iframe>
   </div>


Ejercicios
----------

#. Explica las características principales de un cilindro de simple
   efecto.

#. Dibuja un esquema de un cilindro de simple efecto en reposo,
   comandado por una válvula 3/2.

#. Dibuja un esquema de un cilindro de simple efecto accionado,
   comandado por una válvula 3/2.

#. Simula el funcionamiento de un cilindro de simple efecto
   comandado por una válvula 3/2.

   .. raw:: html

      <div class="video-center">
      <iframe src="/neumatic/index.html"></iframe>
      </div>


#. ¿Qué ocurrirá si quitamos el escape de la válvula 3/2?
   Simula el funcionamiento. Explica cómo cambia el funcionamiento al
   retirar el escape y explica porqué se comporta de esa manera.

   .. figure:: neumatic/_images/neumatic-escape.png
      :alt: Escape.
      :align: center

      Escape neumático.

#. Dibuja de nuevo en este simulador el mismo esquema que aparece arriba
   en el cilindro con carga.
   
   Recuerda seleccionar en el menú ``Editar... Modificar.`` y clicar sobre
   el pistón neumático y sobre la válvula de estranguladora de flujo para
   cambiar sus valores.
   
   Recuerda seleccionar en el menú ``Editar... Voltear.`` para cambiar el
   sentido de la válvula antirretorno.
   
   .. raw:: html

      <div class="video-center">
      <iframe src="/neumatic/index.html"></iframe>
      </div>
   
   Cambia la carga del cilindro a 60kg. ¿Qué presión mínima necesita el
   cilindro para comenzar a salir?
   

