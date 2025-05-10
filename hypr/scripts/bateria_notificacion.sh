#!/bin/bash

bateria=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep percentage | awk '{print $2}' | sed 's/%//')
estado=$(upower -i /org/freedesktop/UPower/devices/battery_BAT1 | grep state | awk '{print $2}')

# Notificación si se está descargando
if [ "$estado" = "discharging" ]; then
    if [ "$bateria" -le 20 ]; then
        notify-send -u critical " ¡Batería baja!" "Te queda ${bateria}% de batería."
    elif [ "$bateria" -le 30 ]; then
        notify-send -u normal " Batería baja" "Tienes ${bateria}% de batería."
    fi
fi

# Notificación si está cargando y ya casi llena
if [ "$estado" = "charging" ]; then
    if [ "$bateria" -ge 80 ]; then
        notify-send -u normal " ¡Desconecta el cargador!" "La batería está al ${bateria}%. Para cuidarla, desconecta el cargador."
    fi
fi

