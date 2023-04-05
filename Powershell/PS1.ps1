
$local:name="456"

function Set-Coman{
    
    $private:DB="LS"
    
    #Get-Variable DB | Format-List
  
    function Set-comm1{
        $DB1="LS2"
        echo $DB
        $DB="321"
        echo $DB
        
        #Get-Variable DB | Format-List
        #Get-Variable -Scope local
    }
      #Get-Variable -Scope local
      set-comm1
       echo $DB
      
}



Set-Coman

$name2="123"
