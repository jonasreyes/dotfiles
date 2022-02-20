# **Documentación del proceso de instalación de XAMPP 8.1.2-2 desde paquete AUR de Archlinux**

Dependencias:

Requiere importación de la clave pública gpg de los desarrolladores del paquete (`F52E98007594C21D`), en caso de que no lo hayas hecho antes debes hacerlo con la siguente orden en la terminal:

`$ gpg --recv-keys F52E98007594C21D`

XAMPP tiene las siguientes Dependencias, instálalas en el orden en que te las muestro:
librerías: 

1. libxcrypt-compat -> [https://aur.archlinux.org/libxcrypt-compat.git](https://aur.archlinux.org/libxcrypt-compat.git ) 
2. tclkit -> [https://aur.archlinux.org/tclkit.git](https://aur.archlinux.org/tclkit.git ) 
3. sdx -> [https://aur.archlinux.org/sdx.git](https://aur.archlinux.org/sdx.git)

Estos paquetes están hospedados en los repositorios AUR de Archlinux por lo que debes descargarlos usando el comando de clonación de GIT, luego ingresas al directorio descomprimido por GIT que tendrá el mismo nombre del paquete y procedes con la instrucción:
$ `makepkg -si` (no debes usar 'sudo', ya que por medidas de seguridad no debes dar privilegios de root a ningún script potencialmente riesgoso)

Luego descargas el paquete AUR de XAMPP ([https://aur.archlinux.org/xampp.git](https://aur.archlinux.org/xampp.git ) ) y lo instalas de la misma forma en que instalaste los paquetes anteriores:
`$ git clone https://aur.archlinux.org/xampp.git` 
`$ cd xampp`
`$ makepkg -si`

Con los pasos anteriores ya tendrás instalado XAMPP en tu Archlinux y puedes gestionarlo con los siguientes comandos (aquí si debes correrlos con privilegios root usando 'sudo'):
# `/opt/lampp/lampp start,stop,restart`

Más detalles y orienciación en la wiki de Archlinux -> https://wiki.archlinux.org/title/XAMPP

**NOTA**:
Luego de poner en marcha el servidor me aparecía el mensaje de no poder encontrar '`log_success_msg`' no te preocupes, es una función responsable de imprimir luego de la puesta en marcha de xampp: 'SUCCESS!', debe ser un detalle en el script de configuración de mariaDB ubicado en `/opt/lampp/bin/mysql.server`, te vas a la linea 261 y comentas la invocación a esa función y generas la siguiente orden el la linea que sigue:
`echo "SUCCESS! $@"`

Guardas cambios y reinicias.

Éxitos!

