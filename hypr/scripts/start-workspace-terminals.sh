#!/bin/bash

# Cambiar al espacio de trabajo 1
hyprctl dispatch workspace 1

# Abrir terminal de Kitty con 'btop'
kitty --title term-btop --detach bash -c "btop; exec bash" &

# Abrir terminal de Kitty con 'neofetch'
kitty --title term-neofetch --detach bash -c "neofetch; exec bash" &

# Abrir terminal de Kitty con 'unimatrix'
kitty --title term-unimatrix --detach bash -c "unimatrix; exec bash" &

# Esperar que las ventanas se inicien
sleep 1

# Ajustar tamaños con wmctrl (Aprox. 83x31 para btop y 58x15 para los demás)
wmctrl -r "term-btop" -e 0,100,100,830,620
wmctrl -r "term-neofetch" -e 0,950,100,580,300
wmctrl -r "term-unimatrix" -e 0,100,450,580,300
