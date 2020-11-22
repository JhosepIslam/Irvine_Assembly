@echo off
echo Registro de los datos de error > registro.txt
echo. >> registro.txt

echo rutas definidas: >> registro.txt
echo ================ >> registro.txt
path >> registro.txt
echo. >> registro.txt

echo Nombre del equipo: >> registro.txt
echo ================== >> registro.txt
hostname >> registro.txt
echo. >> registro.txt

echo Version del Sitema Operativo: >> registro.txt
echo ============================= >> registro.txt
ver >> registro.txt
echo. >> registro.txt

echo Configuracion de Red: >> registro.txt
echo ===================== >> registro.txt
ipconfig /all >> registro.txt
echo. >> registro.txt

echo Ruta del IRVINE: >> registro.txt
echo ================ >> registro.txt
cd >> registro.txt
echo. >> registro.txt

echo Archivos del IRVINE: >> registro.txt
echo ==================== >> registro.txt
dir *.* /O:N >> registro.txt
echo. >> registro.txt
echo. >> registro.txt


