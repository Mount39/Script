function Remove-ComputerAccount{

<#
 .SYNOPSIS 
    This is a Remove User function.  .EXAMPLE    Remove-ComputerAccount -Username admin .INPUTS
    String
#>

    [CmdletBinDing()]
    param(
            $UserName
    )
    $a=read-host "Remove user Yes/No"
    foreach ($User in $UserName){
        if ($a -eq "Yes"){
            Remove-LocalUser -Name $User
            echo "Success"
        }
        elseif ($a -eq "No"){
            echo "Back"
            break
        }
    }
}