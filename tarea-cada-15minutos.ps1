
#powerhell
#NO ES LA MONITORIZACION DE LOS 15 MINUTOS
mkdir c:\logs
cd c:\logs

type infoprocess.dat
Get-date >> infoprocess.dat

echo Procesos de más de 25MB de memoria virtual >> infoprocess.dat

Get-Process | where {$_.virtualmemorysize -gt 250000000} | sort-object virtualmemorysize -descending >> infoprocess.dat

echo Procesos cuya memoria establecida para trabajar sea mayor a 50MB >> infoprocess.dat

(Get-Process).where{$_.WS-gt 50MB} >> infoprocess.dat

echo todos los procesos que estén consumiendo más del 5% de la CPU. >> infoprocess.dat

Get-Process | Where-Object { $_.CPU -gt 5 } >> infoprocess.dat

echo Procesos que se están ejecutando en el sistema. >> infoprocess.dat

tasklist >> infoprocess.dat
