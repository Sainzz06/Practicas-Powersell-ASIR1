function ascii{
param(
[string] $cadena
)
foreach ($caracter in $cadena.ToCharArray()){
$valorASCII = [int]$caracter
Write-Host "Carácter: $caracter => Valor ASCII: $valorASCII"
}

}
$entradausuario = Read-Host "Introduce una cadena de caracteres"
ascii -cadena $entradaUsuario