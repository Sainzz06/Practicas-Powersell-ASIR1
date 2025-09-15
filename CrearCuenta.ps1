function CrearCuenta{
param(
[string]$usuario = "Juan",
[string]$email = "sinemail@dominio.com"
)
Write-host "Usuario: $usuario  Email: $email"
} 
CrearCuenta 