
function Get-AllAduser{
   #param (
    #$domain,
    #$group,
    #$localgroup
   #)
   
   switch($args)
   {
        -domain{
            Get-ADUser -Filter *
        }
        -group{
            Get-ADGroup -Filter *
        }
        -localgroup{
            Get-LocalGroup -Name *
        }

   }
   


}


function Set-Alladuser{
   #param (
     #   $disable,
      #  $enable
   #)
    
   switch($args)
   {
     -disable
     {
     Get-LocalUser | where name -ne "administrator" | Disable-LocalUser 
     #Enable-LocalUser -name  "administrator"

     } 
     -enable
     {
     Get-LocalUser | Where-Object { $_.Enabled -eq $false -and $_.name -ne "krbtgt" } | Enable-LocalUser

     }
   }
   


}
