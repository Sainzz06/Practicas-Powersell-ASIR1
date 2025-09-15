$palabras = @("manzana", "perro", "elefante", "ratón")
$resultado = @()

foreach ($palabra in $palabras){
if ($palabra.Length -gt 5) { 
$resultado += $palabra
}}
$resultado