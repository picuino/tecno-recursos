:Date: 20/09/2025
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. include:: informatica-subs.rst

.. _informatica-av-password-design:

Crear una contraseña
=====================
En esta práctica aprenderemos a crear una contraseña que sea segura
y fácil de recordar. Más tarde podemos utilizar esa contraseña
para cambiar la contraseña por defecto de EducaMadrid.

|br|

#. Primero elegimos 3 ó 4 palabras divertidas, que no sean
   personales y que no tengan relación entre sí.

   Palabras de ejemplo: **gato**, **luna**, **pizza** y **cohete**.
   
   Es importante que evitemos usar nombres reales de familiares, fechas
   de nacimiento, direcciones, nombre de la escuela, etc. Esas palabras
   son fáciles de adivinar.

   |br|

#. Ahora unimos las palabras para formar una frase larga, sin 
   espacios y con la primera letra mayúscula para que sea más fácil de
   leer:
   
   Contraseña de ejemplo: **GatoLunaPizzaCohete**
   
   |br|

#. La palabra resultante debe tener suficientes letras para que sea
   segura, lo ideal es que supere las 12 letras.
   Nuestra palabra de ejemplo tiene un total de 19 letras, lo cual es
   suficiente.

   |br|

#. Por último, añadiremos entre las palabras un **número y un símbolo**
   que te gusten.
   Ten en cuenta que la 'ñ' es un símbolo español poco usado en el 
   extranjero y muy seguro.
   
   Ejemplos de símbolos que podemos usar: **!?#@=+-*ñ**
   
   Contraseña de ejemplo añadiendo números y símbolos: 
   **Gato4LunaPizza#Cohete**

   |br|

#. Ahora es necesario memorizar la contraseña para que no tengamos que 
   escribirla en ningún sitio. Ten en cuenta que escribir nuestra
   contraseña es muy inseguro.
   
   Para memorizarla podemos inventar una historia que utilice las palabras,
   número y símbolo que hemos escogido.
   
   La historia podría quedar así: Un **gato** con **4** patas va a la 
   **luna** y allí come **pizza** y un gofre (el símbolo **#**)
   dentro del **cohete**.

   |br|

#. Ya tenemos nuestra contraseña creada. Recuerda que debes crear 
   una contraseña segura para cada servicio que utilices en Internet.
   
   Puedes hacer variaciones de la contraseña añadiendo más información
   al final de la misma, para diferenciarla dependiendo del servicio 
   que vayas a usar.
   
   Contraseña de Instagram de ejemplo: **Gato4LunaPizza#CoheteIG**
   
   Contraseña de YouTube de ejemplo: **Gato4LunaPizza#CoheteYT**
   
   |br|

#. La mejor forma de guardar todas las contraseñas diferentes es mediante
   un gestor de contraseñas.
   Esta es una app que genera contraseñas seguras y las recuerda todas por
   ti. Tú solo necesitas recordar una contraseña maestra.
   
   Pregunta a tu familia porque necesitarás permiso y ayuda para instalar
   el gestor y utilizarlo.
   
   |br|

#. Otro punto importante para aumentar la seguridad de las contraseñas es
   utilizar la **verificación en dos pasos (2FA)** cuando esté disponible.
   
   La verificación en dos pasos 2FA, además de la contraseña, va a pedir
   un código que se envía al teléfono por SMS, a una app o a una dirección
   de correo electrónico. Esto hace tu cuenta mucho más segura.

   |br|

#. Si tenemos sospechas de que alguien conoce nuestra contraseña, debemos
   cambiarla cuanto antes.

   |br|


Lemario del español
-------------------
Esta es una utilidad que permite ver palabras aleatorias de un lemario
con cerca de 80000 palabras del idioma español.

.. raw:: html
   
   <script>
   let palabras = [];

   fetch('_static/lemario.json')
      .then((res) => {
         if (!res.ok) throw new Error('No se pudo cargar el JSON: ' + res.status);
         return res.json();
      })
      .then((loadedWords) => {
         palabras = loadedWords.palabras;
         nueva_palabra();
      })
      .catch((err) => {
         console.error('Error al cargar JSON:', err);
      });

   function nueva_palabra() {
      var indice = Math.floor(Math.random() * palabras.length);
      document.getElementById("palabra_aleatoria").value = capitalize(palabras[indice]);
      console.log('Palabra ', indice,' de ', palabras.length);
   };
   
   function capitalize(word) {
      if (!word) return '';
      return word[0].toUpperCase() + word.slice(1);
   }
   </script>

   <p style="display:flex; flex-wrap:wrap; align-items:center; gap:8px; margin:0;">Palabra de ejemplo:
   <input disabled="disabled" type="text" id="palabra_aleatoria"
   style="color:black; width:160px; text-align:center; border-radius:8px; padding:4px; height:28px;">
   <button onclick="nueva_palabra()">Nueva palabra</button></p>