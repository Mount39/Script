<#
#1:
foreach($a in 1..9){
    foreach($b in 1..$a){
    write-host -NoNewline $b "*" $a = $($b*$a) " "
    }
    write-host ""
}
#>

<#
#2:
$i=1
while ($i -le 9){
    $c=1
    while ($c -le $i){
      write-host -NoNewline $i "*" $c = $($c*$i) " "
      $c = $c + 1
    }
     $i = $i + 1
     echo " "
}
#>

<#
#3:
$a1=1
do{
   $a2=1
   do {
        write-host -NoNewline $a1 "*" $a2 = $($a1*$a2) " "
        $a2++
   }while ($a2 -le $a1)
   write-host ""
   $a1 ++ 
}while ($a1 -le 9)
#>

<#
$a3=1
do {
    $a4=1
    do {
        write-host -NoNewline $a3 "*" $a4 = $($a3*$a4) ""
        $a4++
    }until ($a4 -gt $a3)
    $a3++    
    write-host ""
}until ($a3 -ge 10)
#>


<#
#1:
for ($i1 = 1;$i1 -le 5; $i1++){
   for ($i2 = 1;$i2 -le $i1; $i2++){
   write-host -NoNewline "*"
   }
  write-host " "
} 
write-host " "
for ($i1 = 1;$i1 -le 5; $i1++){
   for ($i2 = 5;$i2 -ge $i1; $i2--){
   write-host -NoNewline "*"
   }
  write-host " "
}
#>



<#
#2:
for ($i1 = 1;$i1 -le 5; $i1++){
   for ($i2 = 5;$i2 -gt $i1; $i2--){
   write-host -NoNewline " "
   write-host -NoNewline " "
   } 
   for ($j=1;$j -le $i1;$j++){
    write-host -NoNewline "*"
    }
    echo " "
} 
echo ""
for ($i1 = 1;$i1 -le 5; $i1++){
   for ($i2 =1 ;$i2 -lt $i1; $i2++){
   write-host -NoNewline " "
   write-host -NoNewline " "
   } 
   for ($j=5;$j -ge $i1;$j--){
    write-host -NoNewline "*"
    }
    echo " "
} 
#>


<#
#3:
for ($i1 = 1;$i1 -le 6; $i1++){
   for ($i2 = 5;$i2 -ge $i1; $i2--){
   write-host -NoNewline " "
   } 
   for ($j=1;$j -le $i1;$j++){
    write-host -NoNewline "*"
    }
    echo " "
} 
echo ""
for ($i1 = 1;$i1 -le 6; $i1++){
   for ($i2 =1 ;$i2 -lt $i1; $i2++){
   write-host -NoNewline " "
   } 
   for ($j=6;$j -ge $i1;$j--){
    write-host -NoNewline "*"
    }
    echo " "
} 
#>
<#
#4:
for ($i=1;$i -le 5;$i++){
    for ($a=5;$a -ge $i;$a--){
        write-host -NoNewline " "
    }
    for ($b=1;$b -le $i;$b++){
        write-host -NoNewline " *"
    }
    echo ""
}
#>


<#
#5:
for ($i=1;$i -le 5;$i++){
    for ($a=5;$a -ge $i;$a--){
        write-host -NoNewline " "
    }
    for ($b=1;$b -lt $i;$b++){
        write-host -NoNewline " *"
    }
    echo ""
}
 for ($c=1;$c -le 5;$c++){
        write-host -NoNewline " *"
}
echo ""


for ($i=1;$i -le 5;$i++){
    for ($a=1;$a -le $i;$a++){
        write-host -NoNewline " "
    }
    for ($b=5;$b -gt $i;$b--){
        write-host -NoNewline " *"
    }
    echo ""
}
#>

<#
#6:
for ($1i=1;$1i -le 6;$1i++){
    if ($1i -eq 1){
        continue
    }
    elseif ($1i -eq 5){
        continue
    }
    elseif ($1i -eq 3){
        continue
    }
        for ($a=5;$a -ge $1i;$a--){
            write-host -NoNewline " "
        }
        for ($1b=1;$1b -lt $1i;$1b++){
            write-host -NoNewline " *"
        }

    
    echo ""
}


for ($i=1;$i -le 4;$i++){
    for ($c=1;$c -le 1;$c++){
     Write-Host -NoNewline " "
    }
    for ($b=1;$b -le 4;$b++){
        write-host -NoNewline " *"
    }
   echo ""
}
#>

<#
#7:
for ($i=1;$i -le 2;$i++){
    for ($a=3;$a -ge $i;$a--){
        write-host -NoNewline " "
    }
    for ($b=1;$b -le $i;$b++){
        write-host -NoNewline " *"
    }
    echo ""
}



for ($d=1;$d -le 1;$d++){
     for ($a=3;$a -gt $d;$a--){
        write-host -NoNewline " "
    }
     for ($b=1;$b -le 2;$b++){
        write-host -NoNewline "*   "
    }
    echo ""
}

for ($d1=1;$d1 -le 1;$d1++){
     for ($a2=2;$a2 -gt $d1;$a2--){
        write-host -NoNewline " "
    }
     for ($b2=1;$b2 -le 2;$b2++){
        write-host -NoNewline "*     "
    }
    echo ""
}

for ($d3=1;$d3 -le 1;$d3++){
     for ($b3=1;$b3 -le 2;$b3++){
        write-host -NoNewline "*       "
    }
    echo ""
}


for ($c3=1;$c3 -le 4;$c3++){
        write-host -NoNewline " *"
}
echo ""


for ($2i=1;$2i -le 6;$2i++){
    for ($c=1;$c -le 2;$c++){
        Write-Host -NoNewline " "
    }
   for ($b=1;$b -le 2;$b++){
        write-host -NoNewline " *"
    }
    echo ""
}
#>

<#
#8:
for ($i=1;$i -le 1;$i++){
    for ($a=5;$a -ge 2;$a--){
        write-host -NoNewline " "
    }
    for ($b=1;$b -lt 3;$b++){
        write-host -NoNewline " * "
    }
    echo ""
}

for ($i=1;$i -le 1;$i++){
    for ($a=5;$a -ge 3;$a--){
        write-host -NoNewline " "
    }
    for ($b=1;$b -lt 3;$b++){
        write-host -NoNewline "*      "
    }
    echo ""
}

for ($i=1;$i -le 1;$i++){
    for ($a=5;$a -ge 4;$a--){
        write-host -NoNewline " "
    }
    for ($b=1;$b -lt 3;$b++){
        write-host -NoNewline "*        "
    }
    echo ""
}

for ($i=1;$i -le 1;$i++){
    for ($b=1;$b -lt 3;$b++){
        write-host -NoNewline " *         "
    }
    echo ""
}
for ($i=1;$i -le 1;$i++){
    for ($b=1;$b -lt 3;$b++){
        write-host -NoNewline " *         "
    }
    echo ""
}


for ($i=1;$i -le 1;$i++){
    for ($a=5;$a -ge 4;$a--){
        write-host -NoNewline " "
    }
    for ($b=1;$b -lt 3;$b++){
        write-host -NoNewline "*        "
    }
    echo ""
}


for ($i=1;$i -le 1;$i++){
    for ($a=5;$a -ge 3;$a--){
        write-host -NoNewline " "
    }
    for ($b=1;$b -lt 3;$b++){
        write-host -NoNewline "*      "
    }
    echo ""
}



for ($i=1;$i -le 1;$i++){
    for ($a=5;$a -ge 2;$a--){
        write-host -NoNewline " "
    }
    for ($b=1;$b -lt 3;$b++){
        write-host -NoNewline " * "
    }
    echo ""
}

#>
