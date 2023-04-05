function Test-MrTestHandling{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory,
                   ValueFromPipeline,
                   ValueFromPipelineByPropertyName)]
          [string[]]$ComputerName
    )
    Process{
    foreach ($Computer in $ComputerName){
        try{
            Test-WSMan -ComputerName $Computer -ErrorAction Stop
        }
        catch {
            Write-Warning -Message "Unable to connect to Computer"
        }
    }

}
}