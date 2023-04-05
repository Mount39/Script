function Test-MRSupportsShouldProcess {
    [CmdletBinding(SupportsShouldProcess)]
    param (
        $computername
    )
    write-host $computername
}


function Test-MRSupportsShouldProcess {
    [CmdletBinding()]
    param (
    [parameter(Mandatory)]
        [string[]]$computername
    )
    write-host $computername
}


function Test-MRSupportsShouldProcess {
    [CmdletBinding()]
    param (
    [ValidateNotNullOrEmpty()]
        [string[]]$computername = $env:COMPUTERNAME
    )
    write-host $computername
}


