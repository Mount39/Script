<#
#Global,Private,Local
$global:var123="global"
function test-command{
    $Private:var12 = "Private"
    $local:var11 = "var1"
    $Script:var00 = "Script"

    write-host "$Private:var12"
    write-host "$Local:var11"
     write-host "$Script:var00"
     write-host "$global:var123"
}

test-command

write-host "$Private:var12"
 write-host "$Local:var11"
  write-host "$Script:var00"
  write-host "$global:var123"


  #>


<#
  #using
$private:user = "admin"

function Test-command1{ 
    Start-Job -ScriptBlock {
        Write-Host "globalVar: $using:user"
    } | Wait-Job | Receive-Job
  
    
}


#>
#workflow
<#
workflow Read-list{
    param([Parameter(Mandatory)]
    
    $path)
    
    dir -Path $path 
}
Read-list
#>


<#
#别名
function Get-dir{
    [alias("AA")]
    param(
        $Path
        )
        get-childitem -Path $Path
        $Alias:int="get-command"
}
int
#>


<#
$ENV:COMPUTER="WSC"
function Test-ENV{
   
    
   write-host $ENV:int1
    
    function Test-Man1{
           $ENV:int1="123"
       
    }
    Test-Man1

}
Test-ENV
write-host $ENV:int1
#>


<#
#function
function Add-Users1{
    param(
        [parameter(Mandatory)]
        $username
    )
    New-LocalUser -Name $username -NoPassword 
}
${function:Add-Users1}

#>



<#
#Variable
function Get-name{
$Variable:name="abc"
write-host $Variable:name

}
Get-name

write-host $Variable:name
#>


<#
$ps = New-PSSession -ComputerName 192.168.10.2 -Credential (Get-Credential)
$a=5 
$b=6 
Invoke-Command -Session $ps -ScriptBlock { 
$result = $Using:a*$Using:b 
Write-Host The result is $result 

}
#>
