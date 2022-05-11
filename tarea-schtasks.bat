schtasks /create /sc daily /tn Security-Script /tr C:\Windows\SYSVOL\sysvol\hgeneral.san-gva.es\scripts\xcopy.bat /st 15:30 /et 22:00
REM lo de sc significa que lo hace diariamente
REM el tn simplemente es el nombre de la tarea,puedes poner el que sea
REM tr es para poner la ruta de el script que quieres que se ejecute
REM y por ultimo st es para programar la hora de inicio y et para la hora en que se acaba 
