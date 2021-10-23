#!/bin/bash
#
# [Open Source] - [IzzSecurity]
#
# Variables Colour
#
PWD=$(pwd)
OS=$(uname -o)
USER=$(id -u)
verde='\033[32m'
blanco='\033[37m'
rojo='\033[31m'
azul='\033[34m'
negro='\033[0;30m'
rosa='\033[38;5;207m'
amarillo='\033[33m'
morado='\033[35m'
cian='\033[1;36m'
magenta='\033[1;35m'
#
# Bahagian Mesej Pilihan Salah
#
function Error {
echo -e "${rojo}
┌═════════════════════┐
█ ${blanco}PILIHAN SALAH! ${rojo}█
└═════════════════════┘
"${blanco}
sleep 0.5
}
#
# Banner SETSMS
#
function SETSMS {
	sleep 0.5
	clear
echo -e "${verde}


██╗███████╗███████╗      ██████╗ █████╗ ██╗     ██╗
██║╚══███╔╝╚══███╔╝     ██╔════╝██╔══██╗██║     ██║
██║  ███╔╝   ███╔╝█████╗██║     ███████║██║     ██║
██║ ███╔╝   ███╔╝ ╚════╝██║     ██╔══██║██║     ██║
██║███████╗███████╗     ╚██████╗██║  ██║███████╗███████╗
╚═╝╚══════╝╚══════╝      ╚═════╝╚═╝  ╚═╝╚══════╝╚═══     "${blanco}
}
#
# Function
#
SETSMS
sleep 1
echo -e "${verde}
┌═══════════════════════════┐
█ ${blanco}NOMBOR SENARAI HITAM ${verde}█
└═══════════════════════════┘
"${blanco}
sleep 1
