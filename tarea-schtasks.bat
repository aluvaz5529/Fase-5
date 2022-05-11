Xcopy C:\PerfLogs\Admin C:\monitorizacion /E /H /C /I
lo que hace ste comando es copiar lo que hay en C:\PerfLogs\Admin a C:\monitorizacion y los parametros son los siguientes
REM /E copia los subdirectorios de dentro incluido vacios
REM /H Copiar archivos con atributos ocultos y de sistema.
REM /C continua copiando incluso con un error
REM /I esto le hace suponer al sistema que el destino donde se van a dejar las copias soy SIEMPRE carpetas,incluso si no existen las crea ,pero eso si quisieramos copiarlo en otro sitio que no fueran carpetas se tendría que quitar
REM -------------------------------------------------------------------------------------------------------------------------------------
schtasks /create /sc daily /tn Security-Script /tr C:\Windows\SYSVOL\sysvol\hgeneral.san-gva.es\scripts\xcopy.bat /st 15:30 /et 22:00
REM lo de sc significa que lo hace diariamente
REM el tn simplemente es el nombre de la tarea,puedes poner el que sea
REM tr es para poner la ruta de el script que quieres que se ejecute
REM y por ultimo st es para programar la hora de inicio y et para la hora en que se acaba 
