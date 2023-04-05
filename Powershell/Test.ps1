<#
$number = Get-Random -Minimum 1 -Maximum 10
do{
$guess = Read-Host -Prompt "Plase input a shuzi: "
    if ($guess -lt $number){
        Write-Output "xiaol"
    }
    elseif($guess -gt $number){
        Write-Output "dade"
    }
}
until ($guess -eq $number)

$number = Get-Random -Minimum 1 -Maximum 10


do{
$guess = Read-Host -Prompt "Plase input a shuzi: "
    if ($guess -lt $number){
        Write-Output "xiaol"
    }
    elseif($guess -gt $number){
        Write-Output "dade"
    }
}
while ($guess -eq $number)



$date = get-date  -date 'NOvember 22'
while ($date.DayOfWeek -ne 'Thursday'){
    $date = $date.AddDays(1)
    }
    Write-Output $date



    for ($i=1;$i-lt5;$i++){
        if ($i -eq 3){
            continue
        }        
        Write-Output "slepep $i"
        Start-Sleep -Seconds $i
    }


    for ($i=1;$i-lt5;$i++){
        if ($i -eq 3){
            return $i
        }
    }
    Write-Host $i
    


$name=1..100
$name | foreach { echo $_}
    #>


