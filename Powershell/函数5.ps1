function Set-ComputerAccount {

<#
  .SYNOPSIS 
    This is a Remove User function.  .EXAMPLE    Set-ComputerAccount -Username admin -Password Skills .INPUTS
    String   

#>



    [CmdletBinding()] 
    param(
         
        [parameter(Mandatory)]
        [string]$Username,
        [parameter(Mandatory=$false)]
        [string]$Password,
        [ValidateNotNullOrEmpty()]
        [string]$Activate,
        #[parameter(Mandatory)]
        [string]$group,
        [string]$phone,
        [string]$city,
        [string]$country,
        [string]$lastname,
        [string]$firstname,
        [string]$company,
        [string]$job

    )
              try{
             Get-ADUser -Identity $Username -ErrorAction stop
             }
             catch{
                        New-LocalUser -name $Username -NoPassword
                }
           
             if ($Password){
                net user $Username $Password /add
             }

                #$groups=Get-ADPrincipalGroupMembership $Username | Where-Object { $_.name -eq "$group" }
             #if ($groups){
                    #Write-Host "User join Group" 
             #}
             
           
              
             if ($group){
                try{
                    Get-ADGroup -Identity $group -ErrorAction stop
                }
                catch{
                    net group $group /add
                    net group $group $Username /add  
                 }
             }
            

             if ($Activate -eq "False") {
                Disable-LocalUser $Username 
                } 
          
            if ($Activate -eq "True"){
                Enable-LocalUser $Username
                
            }


             if ($phone){
                Set-ADUser -Identity $Username -OfficePhone $phone
             }

              if ($city){
                Set-ADUser -Identity $Username -City $city
             }

              if ($country){
                Set-ADUser -Identity $Username -Country $country
             }
              if ($firstname){
                Set-ADUser -Identity $Username -GivenName $firstname
             }
              if ($lastname){
                Set-ADUser -Identity $Username -Surname $firstname
             }
              if ($company){
                Set-ADUser -Identity $Username -Company $company
             }
              if ($job){
                Set-ADUser -Identity $Username -Title $job
             }
       
        
        
  }
