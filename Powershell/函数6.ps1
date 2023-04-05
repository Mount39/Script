function Add-ComputerAccount {
    [CmdletBinding()] 
    param(
         
        [parameter(Mandatory)]
        [string]$Username,
        [parameter(Mandatory=$false)]
        [string]$Password,
        [ValidateNotNullOrEmpty()]
        [string]$Activate = 'False',
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
             if ($Username){
                New-LocalUser -Name $Username -NoPassword 
               
             } 
             if ($Password){
                net user $Username $Password /add
             }
             if ($group){
              net group $group /add
              net group $group $Username /add
             }

             if ($Activate -eq "False") {
                Disable-LocalUser $Username 
                } 
          
            elseif ($Activate -eq "True"){
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
