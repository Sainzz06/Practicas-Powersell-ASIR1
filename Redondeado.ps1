$numero= 3.7
$redondeado =[math]::Floor($numero)
Write-Output "El numero truncado es $redondeado"

$arr = @(1, 2, 3, 4, 5)
$count = $arr.count
Write-Output "El arreglo tiene $count elementos"

Write-Output "El primer elemento es: $($arr[0])"
Write-Output "El segundo elemento es: $($arr[1])"
Write-Output "El último elemento es: $($arr[-1])"
Write-Output "El penúltimo elemento es: $($arr[-2])"

$arrOriginal = @(1, 2, 3, 4, 5)
$arrCopia = $arrOriginal.Clone()
$arrCopia[0] = 100

Write-Output "Arreglo original: $($arrOriginal)"
Write-Output "Arreglo copia: $($arrCopia)"

$arr = @(10, 20, 30, 40)
$existe = $arr.Contains(30)
Write-Output "¿El arreglo contiene 30? $existe"

$arr = @(10, 20, 30, 40, 30)
$indice = $arr.IndexOf(30)
Write-Output "El valor 30 se encuentra en el índice: $indice"
