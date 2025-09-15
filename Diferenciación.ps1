
$palabra = Read-Host "Introduce una palabra"
$mayusculas = @()
$minusculas = @()


foreach ($caracter in $palabra.ToCharArray()) {
    if ($caracter -cmatch '[A-Z]') {
        $mayusculas += $caracter 
    } elseif ($caracter -cmatch '[a-z]') {
        $minusculas += $caracter
    }else {Write-host "No es un carácter válido"}
} 


Write-Host "Letras mayúsculas: $($mayusculas -join ', ')"
Write-Host "Letras minúsculas: $($minusculas -join ', ')"
