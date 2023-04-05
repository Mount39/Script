<#
get-verb | Sort-Object -Property *
function Get-MrPSVersion{
    $PSVersionTable.PSVersion
}
Get-ChildItem -path Function:\Get-*Version

Get-ChildItem -path Function:\Get-*Version | Remove-Item


#Remove-Module -Name MrPSVersion  





function get-TestMrParameter{
    param(
        $ComputerName
    )

    write-host -NoNewline $ComputerName

}

 #>

 function get-TestParamter{
    param(
        [string[]]$PSParamterName
    )

    foreach ($PSParamter in $PSParamterName){
        $Guest=Get-Command -ParameterName $PSParamter -ErrorAction SilentlyContinue 
          [pscustomobject]@{
            Paramter=$PSParamter
            Count=$Guest.Count
          }
    }


 }