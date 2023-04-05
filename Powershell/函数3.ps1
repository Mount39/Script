function Get-ComputerAccount{
<#
 .SYNOPSIS 
    This is a search User and group function.  .EXAMPLE    Get-ComputerAccount -Identity Administrator    Get-ComputerAccount -group administrators .INPUTS
    String
#>




    [CmdletBinding()]
    param(
    [ValidateNotNullOrEmpty()]
        $Identity=$env:USERNAME,
        $group
    )
    foreach ($User in $Identity){
        Get-LocalUser -name $User

    }
    foreach ($group1 in $group){
        Get-LocalGroup -name $group1
    }
}