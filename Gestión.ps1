function mostrar_menu{
#organización menú
write-host "--------"
write-host "Menú"
write-host "--------"
write-host "1.Gestión de procesos"
write-host "2.Gestión de usuarios"
write-host "3.Gestión de servicios"
write-host "4.Información del sistema"
write-host "5.Ver registros de evento"
write-host "6.Lo que quiera"
write-host "7.Salir"

}

function procesos{
#Menú procesos
write-host "-------------------"
write-host "Gestión de procesos"
write-host "-------------------"
write-host "1.Ver procesos"
write-host "2.Eliminar proceso"
write-host "3.salir"
$empro =Read-host "¿Qué quieres hacer?"
switch ($empro){
1 {Get-Process}
#-name permite que con $stopnom el usuario escoja el proceso a cerrar por nombre y no por ID
2 {$stopnom = Read-Host "Nombre del proceso a eliminar"
Stop-Process -Name $stopnom}
3{mostrar_menu}
}}

function usuarios{
write-host "-------------------"
write-host "Gestión de usuarios"
write-host "-------------------"
write-host "1.Crear usuario"
write-host "2.Eliminar usuario"
write-host "3.Listar usuarios"
write-host "4.Salir"
$emusu = Read-Host "¿Qué quieres hacer?"
switch ($emusu){
1 {
#Pedir nombre y contraseña
$usunom = Read-Host "Nombre para el nuevo usuario"
$usupass = Read-Host "Contraseña para el nuevo usuario"
New-LocalUser -Name $usunom -Password $usupass
}

2 {
$usubor = read-host "Usuario a eliminar"
Remove-LocalUser -Name $usubor
}
3{
Get-LocalUser
}
4{mostrar_menu
}
}}

function servicios{
write-host "-------------------"
write-host "Gestión de servicios"
write-host "-------------------"
write-host "1.Iniciar servicio"
write-host "2.Detener servicio"
write-host "3.Estado de servicio"
write-host "4.Salir"
$emser = Read-Host "¿Qué quieres hacer?"
switch ($emser){
1 {
$sernom = Read-Host "Nombre del servicio"
start-service -Name $sernom 
}

2 {
$serbor = read-host "Servicio a detener"
Stop-service -Name $serbor
}
3{
$server = read-host "¿Qué servicio quieres ver?"
Get-service -Name $server
}
4 {mostrar_menu}
}}

function sistema{
write-host "-------------------"
write-host "Información del sistema"
write-host "-------------------"
write-host "1.Información CPU"
write-host "2.Información memoria"
write-host "3.Información disco duro"
write-host "4.Salir"
$emsis = Read-Host "¿Qué quieres hacer?"
switch ($emsis){
1 {
$sernom = Read-Host "Nombre del servicio"
start-service -Name $sernom 
}

2 {
$serbor = read-host "Servicio a detener"
Stop-service -Name $serbor
}
3{
$server = read-host "¿Qué servicio quieres ver?"
Get-service -Name $server
}
4{mostrar_menu}
}}

function evento{
write-host "-------------------"
write-host "Registros de evento"
write-host "-------------------"
write-host "1.Eventlog"
write-host "2.Salir"
$emser = Read-Host "¿Qué quieres hacer?"
switch ($emser){
1 {
$evennom = Read-Host "Nombre del log"
Get-EventLog -Name $evennom 
}

2 {
mostrar_menu
}
}}

function nosequehacer{
write-host "Sin tiempo para más"
}

function cerrar{
break
}


#Iniciar el menú y escoger a que función ir
mostrar_menu
$enmenu = Read-Host "¿Qué quieres hacer?"
switch ($enmenu){
1 { procesos }
2 { usuarios }
3 { servicios}
4 { sistema }
5 { evento }
6 { nosequehacer  }
7 { cerrar }
}