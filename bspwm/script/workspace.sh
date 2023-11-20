#!/bin/bash

#!/bin/bash

# Función para obtener el número de la workspace


get_workareas() {
    echo "(box    :class 'small-wss'    :hexpand false    :vexpand false $(sh $HOME/.config/bspwm/script/wsbusy.sh 1) $(sh $HOME/.config/bspwm/script/wsbusy.sh 2) $(sh $HOME/.config/bspwm/script/wsbusy.sh 3) $(sh $HOME/.config/bspwm/script/wsbusy.sh 4) $(sh $HOME/.config/bspwm/script/wsbusy.sh 5) $(sh $HOME/.config/bspwm/script/wsbusy.sh 6) $(sh $HOME/.config/bspwm/script/wsbusy.sh 7) $(sh $HOME/.config/bspwm/script/wsbusy.sh 8) $(sh $HOME/.config/bspwm/script/wsbusy.sh 9))"
}


# Bucle infinito para mantener el script en ejecución
while true
do
    get_workareas
    # Ajusta el tiempo de espera según sea necesario
    sleep 0.3
done
