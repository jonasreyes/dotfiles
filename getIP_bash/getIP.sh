#!/bin/bash
# obtiene rápidamente la dirección IP actual de tu máquina y la devuelve para que la uses en alguna variable de otro script.
# Jonas Reyes - February 2022
if [[ -f "tmpIP" ]]; then
  # "Exite el archivo tmpIP, se procede a su eliminación antes de continuar."
  rm tmpIP >> /dev/null
fi

resultado=`hostname -i >> tmpIP | gawk '{print $1}' tmpIP`

echo $resultado
