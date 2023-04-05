<#    
    .SYNOPSIS
    The function Get-SmallFiles



function Get-SmallFiles {
    [CmdletBinding(SupportsShouldProcess)]
    param(
        [PSDefaultvalue(
        help='Default is 100',
        value='100')]
        [int] $size=100
    )
        Get-ChildItem $HOME | Where-Object {
        $_.Length -lt $size -and !$_.PSIsContainer
        }
    

}


#位置参数
function Get-Extersion {
    $name = $args[0]+".txt"
    $name
  
}



#开关参数
function Switch-Item {
    param ([switch]$on)
    if ($on) { "Switch on"}
    else {"Switch Off"}
}




#将Get-command的所用参数给与Get-Mycommand，使其Get-Mycommand可以调用get-command所有参数
#如果使用了CmdletBinding或Parameter属性将函数变成高级函数。则$Args自动变量将不可在函数中使用
function Get-Mycommand { Get-Command $args}





#1,2,3,4 | Get-Pipeline   
function Get-Pipeline {
    process {
    "This is $_"
    }

}





function Get-PiplineBeginEnd {

begin {"Begin: The input $input"}
end {"End: The input $input"}


}



filter Get-ErrorLog ([switch]$Message) 

{ 

 if ($Message) { Out-Host -InputObject $_.Message } 

  else { $_ } 

  }



  function global:Get-DependentSvs { 
 Get-Service | Where-Object {$_.DependentServices} 
} 


#>