!#/bin/bash

#Script genera informe de hardware en la maquina.

# Variables
titulo_informe=$1
inf_pro="procesador.txt"
inf_mem="memoria.txt"
inf_gra="grafica.txt"
inf_hd="discos.txt"

arquitectura=$lscpu
modelo_placa=$(sudo dmidecode -t baseboard)
grafica=$'lspci -k | grep -A 2 -i "VGA"'


#Modelo 
sudo dmidecode -t 2

#Procesador
echo " " > procesador.txt
echo "procesador" >> procesador.txt
echo "----------" >> procesador.txt
echo "comando" >> procesador.txt
echo "lscpu" ^Cdo dmidecode --type memory | less' >> memoria.txt
sudo dmidecode --type mem

#Memoria
echo "Memoria" > memoria.txt
echo "comando" > memoria.txt 
echo 'sudo dmidecode --type memory | less' > memoria.txt
sudo dmidecode --type memory | less > memoria.txt 

#Grafica
lspci -k | grep -A 2 -i "VGA"

#Discos
sudo hdparm -i /dev/sda >> $inf_hd

