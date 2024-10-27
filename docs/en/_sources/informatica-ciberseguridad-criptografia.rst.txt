:Date: 20/04/2024
:Author: Carlos Félix Pardo Martín
:License: Creative Commons Attribution-ShareAlike 4.0 International

.. informatica-ciberseguridad-criptografia:

Criptografía
============
La criptografía es una técnica utilizada desde hace siglos para proteger
la información mediante la codificación de mensajes de manera que solo
los destinatarios autorizados puedan comprenderlos.
En un mundo cada vez más interconectado y digitalizado, la criptografía
juega un papel fundamental en la protección de datos sensibles y en la
seguridad de las comunicaciones en línea.

Imagina que debes enviar un mensaje importante a través de internet.
Sin medidas de seguridad, este mensaje podría ser interceptado y leído
por personas no autorizadas, exponiendo así información confidencial.
Aquí es donde entra en juego la criptografía: al codificar el mensaje
utilizando algoritmos y claves específicas, podemos asegurar que solo
el destinatario auténtico pueda descifrar y entender el contenido.

La criptografía se utiliza en una amplia variedad de aplicaciones,
desde la protección de contraseñas y transacciones bancarias en línea
hasta la seguridad de las comunicaciones gubernamentales y militares.
Su importancia radica en su capacidad para garantizar la confidencialidad,
integridad y autenticidad de la información, incluso en un entorno
digital donde los ataques cibernéticos son cada vez más frecuentes y
sofisticados.


.. contents:: Índice de contenidos:
   :local:
   :depth: 2


1. :index:`AES (Advanced Encryption Standard)`
----------------------------------------------
El algoritmo `AES
<https://es.wikipedia.org/wiki/Advanced_Encryption_Standard>`__
, o Advanced Encryption Standard es un método de
cifrado ampliamente utilizado para proteger información confidencial
en la red. Funciona mediante la conversión de datos en una forma
ilegible para aquellos que no tienen la clave de cifrado correcta.

AES utiliza una serie de rondas de operaciones criptográficas para
mezclar y transformar los datos de manera que sea extremadamente
difícil para los intrusos descifrarlos sin la clave adecuada.
Este proceso se basa en la sustitución de bytes, transposiciones de
filas y columnas, y operaciones algebraicas sobre un bloque de
datos. El tamaño del bloque y de la clave puede variar, lo que
permite adaptarse a diferentes niveles de seguridad.
AES admite claves de longitud de 128, 192 y 256 bits.

Un ejemplo cotidiano del uso de AES es cuando realizas una compra en
línea. Cuando introduces tu información de pago, como el número de
tarjeta de crédito, esta información se cifra utilizando AES antes
de ser transmitida a través de Internet. De esta manera, incluso si
alguien intercepta los datos en el camino, serán ilegibles sin la
clave de cifrado.

Otro ejemplo es cuando utilizas aplicaciones de mensajería en línea,
como WhatsApp o Signal. Estas aplicaciones utilizan AES para cifrar
tus mensajes antes de enviarlos, lo que garantiza que solo el
destinatario pueda leerlos, incluso si el tráfico de datos se
intercepta.

En resumen, AES es una herramienta fundamental en la protección de
la información en línea, ya que proporciona una capa de seguridad
robusta mediante el cifrado de datos sensibles.


2. :index:`Autenticación`
-------------------------
La `autenticación
<https://es.wikipedia.org/wiki/Autenticaci%C3%B3n>`__
es un proceso que verifica la identidad de un
usuario o dispositivo, asegurando que solo aquellos con credenciales
válidas puedan acceder a sistemas, aplicaciones o datos protegidos.

Existen varios métodos de autenticación, entre ellos:

1. **Contraseña**: Es el método más común, donde los usuarios
ingresan una combinación de caracteres conocida solo por ellos para
acceder a sus cuentas. Por ejemplo, al iniciar sesión en una
computadora o en una cuenta en línea.

2. **Autenticación de dos factores (2FA)**: Requiere no solo una
contraseña, sino también un segundo factor de autenticación, como un
código enviado por mensaje de texto o generado por una aplicación en
el teléfono del usuario. Este método añade una capa adicional de
seguridad.

3. **Biometría**: Utiliza características físicas únicas de una
persona, como huellas dactilares, reconocimiento facial o escaneo de
iris, para verificar la identidad. Por ejemplo, desbloquear un
teléfono inteligente con la huella dactilar o el reconocimiento
facial.

4. **Token de seguridad**: Un dispositivo físico o aplicación móvil
que genera un código único que el usuario debe ingresar junto con su
contraseña. Este código cambia periódicamente y es válido solo por
un corto período de tiempo.

La autenticación es esencial para proteger la información y los
sistemas contra accesos no autorizados. Al implementar métodos de
autenticación sólidos, se reduce el riesgo de que personas no
autorizadas accedan a datos sensibles o realicen acciones
maliciosas. Por lo tanto, comprender la importancia de la
autenticación y utilizar métodos adecuados es crucial en el mundo
digital actual.


3. :index:`Autenticación biométrica`
------------------------------------
La `autenticación biométrica
<https://es.wikipedia.org/wiki/Biometr%C3%ADa>`__
es un método de verificación de
identidad que utiliza características físicas únicas de una persona
para confirmar quiénes son. En lugar de recordar contraseñas o
códigos, la autenticación biométrica se basa en atributos biológicos
que son difíciles de replicar o robar.

Un ejemplo común de autenticación biométrica es el reconocimiento
facial. Los sistemas de reconocimiento facial utilizan algoritmos
para analizar características faciales únicas, como la forma de los
ojos, la nariz y la boca, para verificar la identidad de una
persona. Por ejemplo, muchos teléfonos inteligentes modernos
permiten desbloquear el dispositivo simplemente mirando la pantalla,
ya que reconocen el rostro del propietario.

Otro ejemplo es el escaneo de huellas dactilares. Este método
utiliza un sensor para capturar y analizar la huella dactilar única
de un individuo. Las huellas dactilares son extremadamente difíciles
de falsificar, lo que hace que este método sea muy seguro. Por
ejemplo, algunos dispositivos móviles y computadoras portátiles
permiten desbloquear el dispositivo o acceder a ciertas aplicaciones
utilizando el escaneo de huellas dactilares.

Además, existe la autenticación basada en el escaneo de iris. Esta
técnica utiliza la estructura única del iris del ojo para verificar
la identidad de una persona. Los escáneres de iris capturan imágenes
detalladas del iris y las comparan con registros previamente
almacenados para confirmar la identidad. Por ejemplo, algunos
sistemas de seguridad de alto nivel utilizan el escaneo de iris para
permitir el acceso a áreas restringidas.

Por otro lado la identificación biométrica presenta riesgos de
privacidad y seguridad. Si los datos biométricos son robados,
como huellas dactilares o escaneos faciales, no se pueden cambiar
como las contraseñas. Además, si se utilizan de manera incorrecta o
son vulnerables a la falsificación, pueden conducir a la
suplantación de identidad.
Además, existe el riesgo de que los datos biométricos se utilicen
para el seguimiento y la vigilancia sin consentimiento, lo que
plantea preocupaciones éticas y de privacidad.


4. :index:`Autenticación de doble factor (2FA)`
-----------------------------------------------
La `autenticación de doble factor
<https://es.wikipedia.org/wiki/Autenticaci%C3%B3n_de_m%C3%BAltiples_factores>`__
, también conocida como 2FA es un
proceso que añade una capa adicional de seguridad al requerir no
solo una contraseña, sino también un segundo método de verificación
adicional para acceder a una cuenta o servicio en línea.

Un ejemplo común de 2FA es cuando inicias sesión en una cuenta y,
además de ingresar tu contraseña, recibes un código único en tu
teléfono móvil a través de un mensaje de texto o una aplicación de
autenticación. Este código temporal debe ser ingresado junto con la
contraseña para completar el proceso de inicio de sesión.

Otro ejemplo es el uso de un token de seguridad físico o una
aplicación en tu dispositivo móvil que genera códigos aleatorios que
cambian cada pocos segundos. Para iniciar sesión en una cuenta,
necesitas ingresar este código junto con tu contraseña.

La autenticación de doble factor es importante porque incluso si
alguien descubre tu contraseña, no podrán acceder a tu cuenta sin el
segundo factor de autenticación. Esto ayuda a proteger tus cuentas
en línea contra el acceso no autorizado, ya que incluso si tus
credenciales son comprometidas, el atacante no podrá iniciar sesión
sin el segundo factor de verificación, que solo tú tienes acceso.


5. :index:`Autoridad de certificación (CA)`
-------------------------------------------
En el ámbito de la seguridad digital, la `Autoridad de Certificación
<https://es.wikipedia.org/wiki/Autoridad_de_certificaci%C3%B3n>`__
(CA) juega un papel fundamental. Una CA es una entidad responsable
de emitir y gestionar certificados digitales, que son documentos
electrónicos utilizados para verificar la autenticidad de las
identidades en línea y garantizar la seguridad de las comunicaciones
en la red.

Ejemplos de Autoridad de Certificación en España serían la
Fábrica Nacional de Moneda y Timbre (FNMT) o la
Agencia Catalana de Certificación (CATCert).

Imagina que estás navegando por Internet y visitas un sitio web que
necesita proteger la información que compartes con él, como tus
datos de inicio de sesión o tu información de pago.
Cuando accedes a este sitio, tu navegador verifica la autenticidad
del certificado digital que el sitio web presenta.
Este certificado ha sido emitido por una CA de confianza, lo que
significa que la CA ha verificado la identidad del propietario del
sitio web y ha confirmado que es legítimo. Esto garantiza que la
comunicación entre tu navegador y el sitio web esté cifrada y
protegida.

En resumen, las Autoridades de Certificación son fundamentales para
establecer la confianza en las comunicaciones digitales y garantizar
la seguridad en línea al emitir certificados digitales que verifican
la autenticidad de las identidades y protegen la privacidad de los
usuarios.


6. :index:`Captcha`
-------------------
El `Captcha
<https://es.wikipedia.org/wiki/Captcha>`__
es una herramienta de seguridad diseñada para distinguir
entre usuarios humanos y programas automatizados, conocidos como
bots, en Internet. El término Captcha significa "Prueba de Turing
completamente automatizada para diferenciar entre computadoras y
humanos", y fue inventado para evitar que los bots realicen acciones
no deseadas, como el spam o el fraude en línea.

Un ejemplo común de Captcha es el desafío de reconocimiento de
texto. Al registrarse en sitios web o completar formularios en
línea, a menudo se te pedirá que ingreses un código de texto
distorsionado que aparece en una imagen. Este código es difícil de
leer para las máquinas, pero relativamente fácil para los humanos.
Al ingresar el código correcto, confirmas que eres un usuario
legítimo y no un bot.

Otro tipo de Captcha es el desafío de selección de imágenes.
En este caso, se te presentará una serie de imágenes y se te pedirá
que selecciones todas las imágenes que corresponden a un cierto
criterio, como "seleccione todas las imágenes que contienen
semáforos". Esto ayuda a determinar si el usuario es humano o un
bot, ya que los bots tienen dificultades para interpretar y
seleccionar las imágenes correctamente.

En resumen, el Captcha es una herramienta importante en la seguridad
en línea que ayuda a proteger los sitios web y aplicaciones contra
actividades maliciosas realizadas por bots, garantizando que solo
los usuarios humanos puedan realizar ciertas acciones en línea.


7. :index:`Certificado digital`
-------------------------------
Un `certificado digital
<https://es.wikipedia.org/wiki/Certificado_digital>`__
es un documento electrónico utilizado para
verificar la identidad de una entidad en línea, como un sitio web,
una persona o una organización.
Funciona de manera similar a una identificación física, pero en el
mundo digital.
Este certificado contiene información sobre la entidad, como su
nombre, su clave pública y la firma digital de una autoridad de
certificación (CA) de confianza.

Un ejemplo común de un certificado digital es el utilizado en
conexiones seguras a sitios web mediante el protocolo HTTPS.
Cuando visitas un sitio web seguro, tu navegador verifica la
autenticidad del certificado digital presentado por el sitio.
Si el certificado ha sido emitido por una CA confiable y no ha
caducado, tu navegador mostrará un candado junto a la URL del sitio,
indicando que la conexión está cifrada y segura.

Otro ejemplo es el uso de certificados digitales para firmar
electrónicamente documentos o correos electrónicos.
Una persona puede utilizar su certificado digital para agregar una
firma electrónica a un documento, lo que garantiza la integridad y
la autenticidad del mismo. Del mismo modo, las organizaciones pueden
utilizar certificados digitales para autenticar sus correos
electrónicos, asegurando que provienen de una fuente legítima y no
han sido alterados en tránsito.

En resumen, un certificado digital es una herramienta importante en
la seguridad en línea que ayuda a verificar la identidad de
entidades en Internet y garantiza la autenticidad y la integridad de
las comunicaciones digitales.


8. :index:`Cifrado de email`
----------------------------
El `cifrado de correo electrónico
<https://es.wikipedia.org/wiki/Cifrado_email>`__
es un método utilizado para
proteger el contenido de los correos electrónicos para que solo el
destinatario previsto pueda leerlo. Funciona mediante la conversión
del texto del correo electrónico en una forma ilegible para
cualquiera que no tenga la clave de descifrado adecuada.

Un ejemplo común de cifrado de correo electrónico es el uso de
protocolos de cifrado como S/MIME (Secure/Multipurpose Internet Mail
Extensions) o PGP (Pretty Good Privacy). Estos protocolos permiten a
los usuarios cifrar sus correos electrónicos antes de enviarlos,
asegurando que solo el destinatario pueda descifrarlos con su clave
privada correspondiente.

Por ejemplo, supongamos que Juan quiere enviar un correo electrónico
a María de forma segura. Juan puede utilizar un software de cifrado
de correo electrónico para cifrar el contenido del correo
electrónico antes de enviarlo. Esto significa que incluso si alguien
intercepta el correo electrónico en tránsito, no podrá leer su
contenido sin la clave de descifrado adecuada. Solo María, que tiene
la clave privada correspondiente, podrá descifrar y leer el correo
electrónico de manera segura.

El cifrado de correo electrónico es importante para proteger la
privacidad y la seguridad de la comunicación en línea, especialmente
cuando se trata de información sensible o confidencial. Al utilizar
el cifrado de correo electrónico, los usuarios pueden asegurarse de
que sus correos electrónicos estén protegidos contra posibles
intentos de interceptación o espionaje.


9. :index:`Cifrado de extremo a extremo`
----------------------------------------
El `cifrado de extremo a extremo
<https://es.wikipedia.org/wiki/Cifrado_de_extremo_a_extremo>`__
es una técnica de seguridad
informática que protege la privacidad de la comunicación en línea al
asegurar que solo los participantes involucrados puedan leer el
contenido de los mensajes. Funciona mediante el cifrado de los datos
en el dispositivo del remitente y solo se descifran en el
dispositivo del destinatario, lo que significa que ni siquiera el
proveedor de servicios de mensajería tiene acceso al contenido en
texto claro.

Un ejemplo común de cifrado de extremo a extremo es el utilizado en
aplicaciones de mensajería instantánea como WhatsApp, Signal y
Telegram. Cuando envías un mensaje a través de estas aplicaciones,
el mensaje se cifra en tu dispositivo antes de ser enviado. Luego,
solo el dispositivo del destinatario puede descifrar el mensaje
utilizando una clave única que solo el destinatario posee. Esto
significa que incluso si los mensajes son interceptados durante la
transmisión, solo aparecerán como texto cifrado, sin sentido para
cualquier persona que no tenga la clave de descifrado adecuada.

Otro ejemplo es el cifrado de extremo a extremo utilizado en el
correo electrónico, mediante el uso de protocolos como S/MIME
(Secure/Multipurpose Internet Mail Extensions) o PGP (Pretty Good
Privacy). Estos protocolos cifran los correos electrónicos en el
dispositivo del remitente y solo se descifran en el dispositivo del
destinatario, garantizando la privacidad de la comunicación.

En resumen, el cifrado de extremo a extremo es una medida importante
para proteger la privacidad de la comunicación en línea al
garantizar que solo los participantes autorizados puedan acceder al
contenido de los mensajes.


10. :index:`Criptografía`
-------------------------
La `criptografía
<https://es.wikipedia.org/wiki/Criptograf%C3%ADa>`__
es un campo de estudio y práctica que se centra en
técnicas para proteger la información mediante la transformación de
datos en un formato ilegible para aquellos que no tienen la clave de
descifrado adecuada. Se utiliza ampliamente en la seguridad de la
información y la protección de la privacidad en línea.

Un ejemplo común de criptografía es el cifrado de datos.
Esto implica convertir el texto claro en un formato cifrado
utilizando algoritmos matemáticos y claves de cifrado.
Por ejemplo, el cifrado AES (Advanced Encryption Standard) se
utiliza para proteger datos sensibles en la transmisión a través de
Internet. Cuando envías información a través de una conexión segura
HTTPS, como cuando realizas una compra en línea, los datos se cifran
utilizando AES antes de ser transmitidos, lo que garantiza que solo
el destinatario pueda descifrarlos.

Otro ejemplo es el uso de firmas digitales para garantizar la
autenticidad e integridad de los datos. Una firma digital es una
marca electrónica única que se adjunta a un documento y se cifra con
la clave privada del remitente. Cuando el destinatario recibe el
documento junto con la firma digital, puede verificar su
autenticidad utilizando la clave pública del remitente. Este proceso
asegura que el documento no haya sido alterado y que proviene del
remitente indicado.

En resumen, la criptografía es una herramienta fundamental en la
protección de la información y la seguridad en línea, que se utiliza
para garantizar la confidencialidad, autenticidad e integridad de
los datos en diversas aplicaciones y contextos.


11. :index:`DES (Data encryption standard)`
-------------------------------------------
El `DES
<https://es.wikipedia.org/wiki/Data_Encryption_Standard>`__
, o Estándar de Cifrado de Datos, es un algoritmo de cifrado
simétrico utilizado para proteger la confidencialidad de los datos.
Fue desarrollado por IBM en la década de 1970 y se convirtió en un
estándar adoptado por el Gobierno de los Estados Unidos.
DES utiliza una clave de 56 bits para cifrar y descifrar los datos,
que es una clave demasiado corta para los estándares actuales.

A pesar de su larga historia y amplia adopción, DES ha sido
reemplazado en gran medida por algoritmos de cifrado más robustos,
como AES, debido a su longitud de clave relativamente corta y la
evolución de las capacidades informáticas.
Sin embargo, su legado persiste y sigue siendo relevante en ciertos
contextos de seguridad informática.


12. :index:`Encriptar y desencriptar`
-------------------------------------
`Encriptar y desencriptar
<https://es.wikipedia.org/wiki/Criptograf%C3%ADa>`__
son procesos fundamentales en la seguridad
de la información que se utilizan para proteger y acceder a datos
sensibles. Encriptar implica transformar datos legibles en un
formato ilegible utilizando un algoritmo y una clave, mientras que
desencriptar es el proceso inverso de convertir datos encriptados de
nuevo en su forma legible original.

Un ejemplo común de encriptación es cuando utilizamos una aplicación
de mensajería instantánea, como WhatsApp, para enviar un mensaje a
un amigo. Antes de que el mensaje se envíe, se encripta utilizando
un algoritmo de encriptación y una clave única asociada a la
conversación o al usuario. Esto significa que si alguien intercepta
el mensaje en tránsito, solo verán un texto cifrado, ilegible sin la
clave de desencriptación adecuada.

Por otro lado, cuando el mensaje llega al dispositivo del
destinatario, se desencripta utilizando la misma clave utilizada
para encriptarlo. Una vez desencriptado, el mensaje vuelve a su
forma legible original y el destinatario puede leerlo con facilidad.

Otro ejemplo es el uso de encriptación de disco en una computadora.
Al encriptar el disco duro de una computadora, todos los datos
almacenados en él se convierten en un formato ilegible a menos que
se acceda a través de un proceso de desencriptación utilizando una
clave de acceso. Esto protege la información en caso de robo o
acceso no autorizado a la computadora.


13. :index:`Firma digital`
--------------------------
La `firma digital
<https://es.wikipedia.org/wiki/Firma_digital>`__
es una técnica de seguridad utilizada para
asegurar la integridad y la autenticidad de un documento electrónico
o un mensaje en línea. Funciona de manera similar a una firma
manuscrita en un documento físico, pero en un entorno digital.

Un ejemplo común de firma digital es cuando completamos una
transacción en línea, como la firma de un contrato o la autorización
de una transferencia bancaria. Cuando firmamos digitalmente un
documento, se utiliza una clave privada única asociada a nuestra
identidad para generar una firma electrónica. Esta firma se adjunta
al documento y se cifra utilizando la clave privada, lo que
garantiza que el documento no pueda ser alterado sin que se detecte.

Otro ejemplo es el uso de firmas digitales en correos electrónicos.
Cuando enviamos un correo electrónico firmado digitalmente, el
remitente utiliza su clave privada para generar una firma
electrónica única que se adjunta al mensaje. El destinatario puede
verificar la autenticidad de la firma utilizando la clave pública
del remitente. Esto asegura que el mensaje no haya sido alterado
durante la transmisión y que proviene del remitente indicado.

La firma digital es importante en la seguridad en línea porque
proporciona una forma de verificar la autenticidad de los documentos
y mensajes electrónicos, protegiéndolos contra la manipulación o la
falsificación. Además, ayuda a establecer la confianza en las
comunicaciones digitales al garantizar que los mensajes provienen de
fuentes legítimas y no han sido alterados en tránsito.


14. :index:`Hash`
-----------------
El `hash
<https://es.wikipedia.org/wiki/Funci%C3%B3n_hash>`__
es una función criptográfica que toma una cantidad variable
de datos como entrada y genera una pequeña cadena de caracteres
alfanuméricos de longitud fija como salida. Esta cadena de
caracteres, conocida como hash, es única para cada conjunto de datos
de entrada y es prácticamente imposible conseguir que un conjunto
de datos distinto al original genere la misma cadena hash.

Un ejemplo común de hash es su uso en contraseñas almacenadas en una
base de datos. Cuando creas una cuenta en un sitio web y estableces
una contraseña, la contraseña no se almacena directamente en la base
de datos. En cambio, la contraseña se pasa a través de una función
hash y solo se almacena el hash resultante. Cuando vuelves a iniciar
sesión, el sitio web toma la contraseña que ingresaste, la pasa por
la misma función hash y compara el resultado con el hash almacenado
en la base de datos. Si coinciden, se te permite iniciar sesión.

Si en algún momento un ciberdelincuente roba la base de datos de
contraseñas, solo podrá ver los hashes y será muy difícil que a
partir de ellos pueda extraer las contraseñas originales.

Otro ejemplo es el uso de hash en la verificación de la integridad
de archivos. Cuando descargas un archivo de Internet, a menudo se
proporciona un hash junto al archivo. Después de descargar el
archivo, puedes calcular el hash del archivo utilizando una función
hash y compararlo con el hash proporcionado. Si los hashes
coinciden, significa que el archivo no ha sido modificado ni dañado
durante la descarga.

Algunas funciones hash habituales son MD5 o SHA, que generan
hashes con el siguiente aspecto:

`MD5 <https://es.wikipedia.org/wiki/MD5>`__:
5df9f63916ebf8528697b629022993e8

`SHA-256 <https://es.wikipedia.org/wiki/Secure_Hash_Algorithm>`__:
a7ffc6f8bf1ed76651c14756a061d662f580ff4de43b49fa82d80a4b80f8434a


15. :index:`https`
------------------
`HTTPS (Hypertext Transfer Protocol Secure)
<https://es.wikipedia.org/wiki/Protocolo_seguro_de_transferencia_de_hipertexto>`__
es un protocolo de comunicación utilizado para transferir datos
de forma segura a través de Internet.
Se basa en el protocolo HTTP, pero agrega una capa adicional de
seguridad mediante el uso de cifrado SSL/TLS
(Secure Sockets Layer/Transport Layer Security).
Esto asegura que la información transmitida entre el navegador del
usuario y el servidor web esté encriptada y protegida contra la
interceptación por parte de terceros.

Un ejemplo común de HTTPS es cuando accedemos a sitios web que
requieren ingresar información sensible, como datos de inicio de
sesión, información financiera o detalles personales. Por ejemplo,
al realizar compras en línea en sitios web como Amazon o eBay, la
conexión entre tu navegador y el servidor del sitio se establece a
través de HTTPS. Esto significa que tus datos, como el número de
tarjeta de crédito, se transmiten de forma segura y están protegidos
contra posibles intentos de interceptación por parte de
ciberdelincuentes.

Otro ejemplo es cuando inicias sesión en tu cuenta de correo
electrónico, como Gmail o Outlook. Al acceder a tu bandeja de
entrada a través de HTTPS, la comunicación entre tu navegador y los
servidores de correo se cifra, lo que garantiza la privacidad y la
seguridad de tus mensajes electrónicos y datos personales.

En resumen, HTTPS es esencial para proteger la privacidad y la
seguridad en línea al garantizar que la información transmitida a
través de Internet esté encriptada y segura contra posibles amenazas.


16. :index:`MD5`
----------------
`MD5, o Message Digest Algorithm 5,
<https://es.wikipedia.org/wiki/MD5>`__
es un algoritmo de hash ampliamente utilizado para producir un
valor hash de 128 bits a partir de datos de entrada de longitud
variable.
Es una de las funciones de hash más conocidas y se utiliza en una
gran variedad de aplicaciones, aunque su seguridad se ha visto
comprometida en los últimos años.

Un ejemplo concreto de MD5 es su uso en la verificación de la
integridad de archivos descargados. Cuando descargas un archivo de
Internet, a menudo se proporciona un valor de hash MD5 junto al
archivo. Después de descargar el archivo, puedes calcular el hash
MD5 del archivo utilizando una herramienta de software adecuada.
Luego, puedes comparar el valor hash calculado con el valor hash
proporcionado. Si los valores coinciden, significa que el archivo
que descargaste no ha sido modificado ni dañado durante la descarga.

Otro ejemplo es el uso de MD5 en la autenticación de contraseñas.
Anteriormente, muchos sistemas de autenticación almacenaban
contraseñas en la base de datos utilizando el hash MD5 de la
contraseña. Cuando un usuario intentaba iniciar sesión, el sistema
tomaba la contraseña ingresada, calculaba el hash MD5 y lo comparaba
con el hash almacenado en la base de datos. Si los hashes
coincidían, el sistema permitía el acceso.

Sin embargo, MD5 se considera ahora débil para aplicaciones de
seguridad debido a su vulnerabilidad a los ataques de colisión,
donde dos conjuntos de datos diferentes pueden producir el mismo
valor hash. Por lo tanto, su uso en aplicaciones de seguridad
críticas se ha desaconsejado en favor de algoritmos de hash más
seguros, como SHA.


17. :index:`PIN`
----------------
Un `PIN, o Número de Identificación Personal,
<https://es.wikipedia.org/wiki/N%C3%BAmero_de_identificaci%C3%B3n_personal>`__
es un código numérico
utilizado para autenticar la identidad de un usuario o autorizar el
acceso a un sistema o dispositivo. Por lo general, consta de cuatro
o más dígitos y se utiliza como medida de seguridad para proteger la
información personal y restringir el acceso no autorizado.

Un ejemplo común de un PIN es el código que utilizamos para
desbloquear nuestro teléfono móvil. Cuando configuramos un PIN en
nuestro dispositivo, debemos ingresar ese mismo código cada vez que
queremos acceder al teléfono. Esto garantiza que solo el propietario
autorizado pueda desbloquear y acceder al dispositivo, protegiendo
así la información personal y los datos almacenados en el teléfono.

Otro ejemplo es el uso de un PIN en cajeros automáticos (ATM).
Cuando vamos a retirar efectivo de un cajero automático, se nos
solicita que ingresemos un PIN para autenticar nuestra identidad y
autorizar la transacción. El PIN actúa como una capa adicional de
seguridad para prevenir el acceso no autorizado a nuestra cuenta
bancaria y proteger nuestros fondos.

Además, los PINs se utilizan comúnmente en tarjetas de débito y
crédito como una medida de seguridad adicional. Cuando realizamos
una compra en una tienda física o en línea, se nos pide que
ingresemos nuestro PIN para verificar que somos los titulares
legítimos de la tarjeta y autorizar la transacción.


18. :index:`Password (contraseña)`
----------------------------------
Una `contraseña, también conocida como password,
<https://es.wikipedia.org/wiki/Contrase%C3%B1a>`__
es una secuencia de caracteres utilizada para autenticar la
identidad de un usuario y otorgar acceso a un sistema,
dispositivo o cuenta personal.
Las contraseñas son una medida de seguridad fundamental en la
protección de la información personal y confidencial en línea.

Un ejemplo común de una contraseña es la que utilizamos para acceder
a nuestras cuentas de correo electrónico, redes sociales o servicios
en línea. Cuando creamos una cuenta, se nos solicita que elijamos
una contraseña única y segura. Esta contraseña actúa como una llave
digital que nos permite ingresar a nuestra cuenta y acceder a la
información asociada a ella.

Otro ejemplo es el uso de contraseñas para desbloquear nuestros
dispositivos electrónicos, como teléfonos móviles, tabletas o
computadoras portátiles. Configuramos una contraseña en nuestros
dispositivos para proteger la información personal almacenada en
ellos y evitar el acceso no autorizado por parte de otras personas.

Además, las contraseñas se utilizan comúnmente en transacciones
financieras en línea, como el acceso a cuentas bancarias o la
realización de compras en línea. Al ingresar una contraseña
correcta, verificamos nuestra identidad y autorizamos la
transacción, lo que protege nuestra información financiera y
previene el fraude.

Es importante elegir contraseñas fuertes y seguras que sean
difíciles de adivinar o hackear. Esto incluye utilizar una
combinación de letras mayúsculas y minúsculas, números y caracteres
especiales, así como evitar palabras comunes o información personal
fácilmente deducible. Las contraseñas son una parte crucial de la
ciberseguridad y deben manejarse con cuidado para proteger nuestra
información en línea.


19. :index:`Password cracking`
------------------------------
El `password cracking
<https://es.wikipedia.org/wiki/Descifrado_de_contrase%C3%B1a>`__
es el proceso de descifrar o descubrir
contraseñas de manera no autorizada con el fin de obtener acceso no
autorizado a sistemas, dispositivos o cuentas en línea. Este método
se utiliza comúnmente por parte de piratas informáticos y
ciberdelincuentes para comprometer la seguridad de la información y
realizar actividades maliciosas.

Un ejemplo concreto de "password cracking" es el uso de programas
informáticos especializados llamados "crackers" o "password
crackers" que intentan adivinar o descifrar contraseñas mediante
diversos métodos. Estos programas pueden utilizar técnicas como la
fuerza bruta, que consiste en probar todas las combinaciones
posibles de caracteres hasta encontrar la contraseña correcta, o el
diccionario, que utiliza una lista de palabras comunes o
combinaciones de contraseñas para intentar descifrar la contraseña.

Otro ejemplo es el uso de ataques de ingeniería social para obtener
contraseñas de manera fraudulenta. En estos casos, los piratas
informáticos pueden utilizar correos electrónicos falsos, mensajes
de texto o llamadas telefónicas engañosas para engañar a los
usuarios y persuadirlos para que revelen sus contraseñas
voluntariamente.

Es importante destacar que el "password cracking" es una actividad
ilegal y viola la privacidad y seguridad de las personas. Para
protegerse contra este tipo de ataques, es fundamental utilizar
contraseñas seguras y robustas, así como mantenerse alerta ante
posibles intentos de ingeniería social. Además, es recomendable
utilizar medidas de seguridad adicionales, como la autenticación de
dos factores, para fortalecer la seguridad de las cuentas en línea.


20. :index:`RSA (Rivest, Shamir, Adleman)`
------------------------------------------
`RSA, acrónimo de Rivest, Shamir y Adleman,
<https://es.wikipedia.org/wiki/RSA>`__
es un algoritmo de criptografía asimétrica utilizado para la
encriptación y la firma digital.
Fue desarrollado en 1977 por los criptógrafos Ronald Rivest,
Adi Shamir y Leonard Adleman y se basa en el concepto de la
factorización de números enteros muy grandes.

El algoritmo RSA utiliza un par de claves: una clave pública
conocida por todos y una clave privada conocida por uno solo.
La clave pública se comparte libremente y se utiliza para
encriptar datos, mientras que la clave privada se mantiene en
secreto y se utiliza para desencriptar los datos encriptados.
Esto permite que cualquier persona pueda enviar mensajes encriptados
a un destinatario utilizando su clave pública, pero solo el
destinatario posee la clave privada necesaria para desencriptarlos.

Un ejemplo concreto de RSA es su aplicación en la seguridad de las
comunicaciones en línea. Cuando visitamos un sitio web que utiliza
HTTPS, como una tienda en línea o un banco, el navegador y el
servidor web utilizan el algoritmo RSA para establecer la primera
conexión segura y enviarse las claves simétricas del algoritmo AES.
Durante este proceso, el servidor web envía su clave pública
al navegador, que se utiliza para encriptar la clave AES,
antes de enviarlos al servidor. Luego, el servidor utiliza su clave
privada para desencriptar los datos y comenzar una comunicación
de manera segura.

RSA es un sistema asimétrico, seguro para establecer la primera
comunicación, pero es menos rápido y eficiente que un sistema
simétrico como AES.
AES es más rápido y eficiente por lo que se utiliza en el resto de
la comunicación, después de que se hayan intercambiado sus claves
mediante el algoritmo seguro RSA.

Además, RSA se utiliza en la firma digital para garantizar la
autenticidad e integridad de los documentos electrónicos.
Al firmar digitalmente un documento, se utiliza la clave privada del
remitente para generar una firma única, que se adjunta al documento
y se puede verificar utilizando la clave pública del remitente,
garantizando que el documento no ha sido alterado y proviene del
remitente legítimo.


21. :index:`SHA`
----------------
`SHA, o Secure Hash Algorithm,
<https://es.wikipedia.org/wiki/Secure_Hash_Algorithm>`__
es una familia de algoritmos
criptográficos utilizados para producir un valor hash único y fijo
a partir de datos de entrada de longitud variable. Estos valores
hash son como la "huella digital" de un conjunto de datos y se
utiliza principalmente para verificar la integridad de los datos y
para la firma digital.

Un ejemplo concreto de SHA es su aplicación en la verificación de la
integridad de archivos descargados. Cuando descargamos un archivo de
Internet, a menudo se proporciona un valor hash SHA junto al
archivo. Después de descargar el archivo, podemos calcular el valor
hash SHA del archivo utilizando una herramienta de software
adecuada. Luego, podemos comparar el valor hash calculado con el
valor hash proporcionado. Si los valores coinciden, significa que el
archivo que descargamos no ha sido modificado ni dañado durante la
descarga.

Para un ciberdelincuente es extremadamente difícil conseguir que un
archivo modificado tenga el mismo valor hash que el archivo original.
Por lo tanto, si coinciden los hash, es casi imposible que el archivo
descargado haya sido alterado.

Además, SHA se utiliza en la firma digital para garantizar la
autenticidad e integridad de los documentos electrónicos. Al firmar
digitalmente un documento, se utiliza SHA para generar un valor hash
único del contenido del documento. Este valor hash se cifra
utilizando la clave privada del remitente, creando así una firma
digital. Al verificar la firma digital utilizando la clave pública
del remitente, se puede garantizar que el documento no ha sido
alterado y proviene del remitente legítimo.


22. :index:`SSH (Secure shell)`
-------------------------------
`SSH, o Secure Shell,
<https://es.wikipedia.org/wiki/Secure_Shell>`__
es un protocolo de red que permite a los
usuarios acceder de forma segura a computadoras y servidores remotos
a través de una conexión cifrada. Se utiliza ampliamente en entornos
de administración de sistemas y redes para realizar tareas de
gestión y mantenimiento de forma remota.

Un ejemplo concreto de SSH es su uso para acceder a un servidor web.
Cuando un administrador necesita realizar cambios en la
configuración del servidor o actualizar el software, puede
conectarse al servidor utilizando SSH. Esto se hace utilizando un
cliente SSH, como PuTTY en Windows o Terminal en macOS y Linux.
Al iniciar una sesión SSH, el cliente se conecta al servidor
utilizando el protocolo SSH y autentica al usuario mediante un
nombre de usuario y una contraseña o mediante claves de
autenticación pública/privada.

Una vez autenticado, el usuario puede ejecutar comandos en el
servidor de la misma manera que si estuviera físicamente presente en
él. Esto incluye tareas como la instalación de software, la gestión
de archivos y directorios, y la supervisión del rendimiento del
sistema. La comunicación entre el cliente y el servidor a través de
SSH está encriptada, lo que garantiza la seguridad de los datos
transmitidos y protege contra posibles ataques de interceptación.

Además de su uso en la administración de servidores, SSH también se
utiliza para transferir archivos de manera segura entre computadoras
utilizando el protocolo SCP (Secure Copy) o SFTP (SSH File Transfer
Protocol). Esto proporciona una forma segura de transferir archivos
sensibles sin comprometer la seguridad de la información. En
resumen, SSH es una herramienta esencial en ciberseguridad para
gestionar sistemas de forma remota de manera segura y protegida.


23. :index:`SSL (Secure socket layer)`
--------------------------------------
`SSL, o Secure Socket Layer,
<https://es.wikipedia.org/wiki/Seguridad_de_la_capa_de_transporte>`__
es un protocolo de seguridad utilizado
para establecer conexiones seguras a través de Internet. Su función
principal es proporcionar un canal seguro de comunicación entre un
cliente (como un navegador web) y un servidor (como un sitio web),
protegiendo la confidencialidad e integridad de los datos
transmitidos.

Un ejemplo concreto de SSL es su aplicación en el protocolo HTTPS
(Hypertext Transfer Protocol Secure). Cuando un usuario accede a un
sitio web que utiliza HTTPS, como una tienda en línea o un banco, el
navegador y el servidor establecen una conexión segura utilizando
SSL. Durante este proceso, el servidor web presenta un certificado
SSL al navegador, que contiene una clave pública y una firma digital
emitida por una Autoridad de Certificación (CA) de confianza. El
navegador utiliza esta información para verificar la autenticidad
del servidor y establecer una conexión cifrada.

Una vez establecida la conexión segura, todos los datos transmitidos
entre el navegador y el servidor están encriptados y protegidos
contra posibles intentos de interceptación por parte de terceros.
Esto incluye información confidencial como contraseñas, números de
tarjeta de crédito y otros datos personales.

Además de su uso en HTTPS, SSL también se utiliza en otros
protocolos de comunicación segura, como SMTPS (Simple Mail Transfer
Protocol Secure) para el correo electrónico seguro, y FTPS (File
Transfer Protocol Secure) para la transferencia de archivos segura.

SSL es una tecnología fundamental en ciberseguridad que garantiza la
seguridad y privacidad de las comunicaciones en línea al
proporcionar un canal seguro de comunicación entre clientes y
servidores.


24. :index:`Seguridad de contraseñas`
-------------------------------------
La `seguridad de contraseñas
<https://es.wikipedia.org/wiki/Seguridad_de_la_contrase%C3%B1a>`__
es un conjunto de prácticas y medidas
diseñadas para proteger las contraseñas de acceso a cuentas en línea
y dispositivos electrónicos, con el fin de prevenir el acceso no
autorizado y salvaguardar la información personal y confidencial de
los usuarios.

Un aspecto fundamental de la seguridad de contraseñas es la creación
de contraseñas fuertes y únicas. Esto implica utilizar una
combinación de letras mayúsculas y minúsculas, números y caracteres
especiales, así como evitar palabras comunes o fácilmente
deducibles. Por ejemplo, una contraseña segura podría ser
"Jg#2k$P!9ys5".

Además, es importante no reutilizar contraseñas en múltiples
cuentas, ya que esto aumenta el riesgo de que un ciberdelincuente
acceda a múltiples cuentas si una contraseña se ve comprometida.
Por ejemplo, si una persona utiliza la misma contraseña para su
correo electrónico y su cuenta bancaria, un ataque exitoso en una
cuenta podría comprometer la seguridad de ambas.

Los gestores de contraseñas son herramientas diseñadas para
almacenar y gestionar de forma segura las contraseñas de las cuentas
en línea. Utilizan un cifrado robusto para proteger la información
confidencial y suelen ofrecer funciones como la generación de
contraseñas seguras, la sincronización entre dispositivos y la
autenticación de dos factores. Los usuarios solo necesitan recordar
una contraseña maestra para acceder a todas sus contraseñas
almacenadas. Ejemplos populares incluyen LastPass, 1Password y
Bitwarden. Los gestores de contraseñas ayudan a mejorar la seguridad
en línea al facilitar la creación y gestión de contraseñas únicas y
seguras para cada cuenta.


25. :index:`TLS (Transport Layer Security)`
-------------------------------------------
`TLS, o Transport Layer Security,
<https://es.wikipedia.org/wiki/Seguridad_de_la_capa_de_transporte>`__
es un protocolo de seguridad
utilizado para establecer conexiones seguras a través de Internet.
Su función principal es garantizar la privacidad e integridad de los
datos transmitidos entre un cliente (como un navegador web) y un
servidor (como un sitio web), protegiéndolos contra posibles
intentos de interceptación o alteración por parte de terceros.

Un ejemplo concreto de TLS es su aplicación en el protocolo HTTPS
(Hypertext Transfer Protocol Secure). Cuando un usuario accede a un
sitio web que utiliza HTTPS, el navegador y el servidor establecen
una conexión segura utilizando TLS. Durante este proceso, el
servidor web presenta un certificado SSL/TLS al navegador, que
contiene una clave pública y una firma digital emitida por una
Autoridad de Certificación (CA) de confianza. El navegador utiliza
esta información para verificar la autenticidad del servidor y
establecer una conexión cifrada utilizando algoritmos de cifrado
fuertes.

Una vez establecida la conexión segura, todos los datos transmitidos
entre el navegador y el servidor están encriptados y protegidos
contra posibles intentos de interceptación o manipulación. Esto
incluye información confidencial como contraseñas, información
financiera y otros datos personales.

Además de su uso en HTTPS, TLS también se utiliza en otros
protocolos de comunicación segura, como SMTPS (Simple Mail Transfer
Protocol Secure) para el correo electrónico seguro, y FTPS (File
Transfer Protocol Secure) para la transferencia de archivos segura.


26. :index:`WPA (acceso Wi-Fi protegido)`
-----------------------------------------
`WPA, o Wi-Fi Protected Access,
<https://es.wikipedia.org/wiki/Wi-Fi_Protected_Access>`__
es un estándar de seguridad diseñado
para proteger las redes Wi-Fi contra accesos no autorizados y
ataques de piratería. Se utiliza para cifrar las comunicaciones
inalámbricas entre dispositivos y puntos de acceso Wi-Fi,
garantizando la confidencialidad e integridad de los datos
transmitidos.

Un ejemplo concreto de WPA es su aplicación en la configuración de
contraseñas para redes Wi-Fi domésticas. Cuando configuramos una red
Wi-Fi en casa, podemos habilitar la seguridad WPA y asignar una
contraseña única. Esta contraseña actúa como una clave de acceso
para los dispositivos que desean conectarse a la red Wi-Fi.
Sin la contraseña correcta, los dispositivos no autorizados no
pueden acceder a la red, protegiendo así la privacidad y seguridad
de la conexión Wi-Fi.

Además, WPA también puede implementarse en entornos empresariales y
de negocios para proteger las redes corporativas contra accesos no
autorizados. En estos casos, se pueden utilizar técnicas adicionales
de seguridad, como la autenticación de usuarios y la segmentación de
la red, para reforzar la protección de la red Wi-Fi contra posibles
amenazas.

