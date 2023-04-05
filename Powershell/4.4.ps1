<#
$day=3

switch ($day)
{

    0{ $result = 'Sunday'}
    1{ $result = 'Monday'}
    2{ $result = 'Tuesday'}
    3{ $result = 'WedDnesday'}
    4{ $result = 'Thursday'}
    5{ $result = 'Friday'}
    6{ $result = 'Saturaday'}


}

$result




$day=3
$result=switch($day)

{
    0{'Sunday'}
    1{'Monday'}
    2{'Tuesday'}
    3{'Wednesday'}
    4{'Thursday'}
    5{'friday'}
    6{'Saturday'}


}
$result




$item = 'Role'


switch($item) 
{
    Component

    {
        'is a  component'
    }

    Role
    {
        'is a role'
    }
    Location
    {
    'is  a location'
    }

}



$roles = @('WEB','Datebase')

switch($roles){
    'Datebase' {'Configure SQL'}
    'WEb' {'Config IIS'}
    'FilesServer' {'Configure share'}
}




$Message = 'Warning, out of disk space' 
switch -Wildcard ( $message ) 
{ 
 'Error*' 
 { 
 Write-Error -Message $Message 
 } 
 'Warning*' 
 { 
 Write-Warning -Message $Message 
 } 
 default 
 { 
 Write-Information $message 
 } 
} 


$Message = 'Warning, out of disk space' 
switch -regex ( $message ) 
{ 
 '^Error' 
 { 
 Write-Error -Message $Message 
 } 
 '^Warning' 
 { 
 Write-Warning -Message $Message 
 } 
 default 
 { 
 Write-Information $message 
 } 
} 





$filepath="C:\Users\Administrator\Desktop\1.txt"
switch -Wildcard -file ($filepath)
{
    'Error*'

    {

    Write-Error -Message $PSItem
    }

    'Warning*'
    {
    Write-Warning -Message $PSItem
    }
    default 
 { 
    Write-Output $PSItem
}
}




switch -Regex -Wildcard  ((get-service | where status -eq 'running')){
    '*Server$' 
    {
    Write-Output $PSItem
    }
  
}


switch ('word')

{
    'word'{'Lower case word match'}

    'Word' {'Mixed case word match'}

    'WORD' {'upper case word match'}

}



switch ('word')

{
    'word'{'Lower case word match' 
      continue }
  

    'Word' {'Mixed case word match'
       continue}

    'WORD' {'upper case word match'
    continue}

}

$filepath="C:\Users\Administrator\Desktop\1.txt"
switch -Wildcard -file $filepath{
    '*Error*'
    {
        Write-Error -Message $psITEM

    }

    'Warnning'
    {
        Write-Warning -Message $psITEM
    }
    default 
    {
    Write-Output $psITEM
    }
}


$Messages = @(
    'Downloading update'
    'Ran into errors downloading file'
    'Error out of disk space'
    'Sendimg email'
)
switch -Wildcard($Messages)
{
'Error*'
    {
        Write-Error -Message $PSItem
        break
    }
    '*Error*'
    {
    Write-Warning -Message $PSItem
    continue
    }
    '*Warning*'
    {
        Write-Warning -Message $PSItem
        continue
    }
    default
    {
        Write-Output $PSItem
    }
}


enum Context {
    Component
    Role
    Location
    }
    $itme=[Context]::Role
    switch($item)
    {
        Component
        {
        'is a component'
        }
        Role
        {
            'is a role'
        }
        Location
        {
        'is a location'
        }
    }


switch($item)
{
    ([Context]::Component)
    {
    'is a componet'
    }
    ([Context]::Role)
    {
        'is a role'
    }
    ([Context]::Location)
    {
        'is a location'
    }
}


$age =37
switch($age)
{
    {$psITem -le 18}
    {
        'child'
    }
    {$PSItem -gt 18}
    {
        'adult'
    }

}

switch ($age)

{
({$PSItem -le 18})
{
    'child'
}
({$PSItem -gt 18})
{
      'adult'
}

}




$message = 'my ssn is 123-23-3456 and credit card: 1234-5678-1234-5678'
switch -regex ($message) 
{ 
 '(?<SSN>\d\d\d-\d\d-\d\d\d\d)' 
 { 
 Write-Warning "message contains a SSN: $($matches.SSN)"
 } 
 '(?<CC>\d\d\d\d-\d\d\d\d-\d\d\d\d-\d\d\d\d)' 
 { 
 Write-Warning "message contains a credit card number: 
$($matches.CC)" 
 } 
 '(?<Phone>\d\d\d-\d\d\d-\d\d\d\d)' 
 { 
 Write-Warning "message contains a phone number: 
$($matches.Phone)" 
 } 
} 



$values = '', 5, $null 
switch ( $values ) 
{ 
 $null { "Value '$_' is `$null" } 
 { '' -eq $_ } { "Value '$_' is an empty string" } 
 default { "Value [$_] isn't an empty string or `$null" } 
} 



$file = Get-ChildItem NonExistantFile* 
switch ( $file ) 
{ 
 $null { '$file is $null' } 
 default { "`$file is type $($file.GetType().Name)" } 
} 


$isVisible = $false 
$isEnabled = $true 
$isSecure = $true 
switch ( $true ) 
{ 
 $isEnabled 
 { 
 'Do-Action' 
 } 
 $isVisible 
 { 
 'Show-Animation' 
 } 
 $isSecure 
 { 
 'Enable-AdminMenu' 
 } 
}


$isVisible = $false 
$isEnabled = $true 
$isAdmin = $false 
switch ( $true ) 
{ 
 $isEnabled 
 { 
 'Do-Action' 
 $isVisible = $true 
 } 
 $isVisible 
 { 
 'Show-Animation' 
 } 
 $isAdmin 
 { 
 'Enable-AdminMenu' 
 } 
}


$a = 1, 2, 3, 4 
switch($a) { 
 1 { [void]$switch.MoveNext(); $switch.Current } 
 3 { [void]$switch.MoveNext(); $switch.Current } 
} 



$day = 3 
$lookup = @{ 
 0 = 'Sunday' 
 1 = 'Monday' 
 2 = 'Tuesday' 
 3 = 'Wednesday' 
 4 = 'Thursday' 
 5 = 'Friday' 
 6 = 'Saturday' 
} 
$lookup[$day]



$day = 3 
enum DayOfTheWeek { 
 Sunday 
 Monday 
 Tuesday 
 Wednesday 
 Thursday 
 Friday 
 Saturday 
} 
[DayOfTheWeek]$day 


$data = @('Zero','One','Two','Three') 
$data.Count

$data[0,2,3]
$data[-1]

$null -eq $data[90000]


$empty = $null
$empty[0]

 $data[ $data.count - 1 ] 
 $data = 'Zero','One','Two','Three' 

 $data | ForEach-Object {"Item: [$PSItem]"} 


 foreach ( $node in $data ) 
{ 
 "Item: [$node]" 
}

$data.foreach({"Item [$PSItem]"})


 $data.foreach{"Item [$PSItem]"} 
 
  for ( $index = 0; $index -lt $data.count; $index++) 
{ 
 "Item: [{0}]" -f $data[$index] 
} 

 $data = 'Zero','One','Two','Three' 
switch( $data ) 
{ 
 'One' 
 { 
 'Tock' 
 } 
 'Three' 
 { 
 'Tock' 
 } 
 Default 
 { 
 'Tick' 
 } 
} 



 for ( $index = 0; $index -lt $data.count; $index++ ) 
{ 
 $data[$index] = "Item: [{0}]" -f $data[$index] 
}

 $data = @( 
 [pscustomobject]@{FirstName='Kevin';LastName='Marquette'} 
 [pscustomobject]@{FirstName='John'; LastName='Doe'} 
)
 

 $data | ForEach-Object {$_.LastName} 


 foreach($person in $data) 
{ 
 $person = [pscustomobject]@{ 
 FirstName='Kevin' 
 LastName='Marquette' 
 } 
} 



 $data = @(1,2,3,4)
 $data -join '-'

  $data = @(1,2,3,4) 
   -join $data


$data = @('ATX-SQL-01','ATX-SQL-02','ATX-SQL-03') 
 $data -replace 'ATX','LAX'

 $data = @('red','green','blue') 
  $data -contains 'green'

 $data = @('red','green','blue')  $pattern = "^({0})$" -f ($data -join '|')  $pattern  'green' -match $pattern  $data = @('red','green','blue') 
if ( $data -eq 'green' ) 
{ 
 'Green was found' 
} 
if ( $data -ne 'green' ) 
{ 
 'And green was not found' 
} 


 $array = @('one',$null,'three') 
if ( $array -eq $null) 
{ 
 'I think Array is $null, but I would be wrong' 
}
 
 $first = @( 
 'Zero' 
 'One' 
) 
$second = @( 
 'Two' 
 'Three' 
) 
$first+$second


$data = @( 
 'Zero' 
 'One' 
 'Two' 
 'Three' 
) 
$data += 'four'

$array = 1..5 | ForEach-Object { 
 "ATX-SQL-$PSItem" 
} 

$data = @('red','green','blue')
 $data * 3 

 $data = @(@(1,2,3),@(4,5,6),@(7,8,9)) 
 $data
  #>