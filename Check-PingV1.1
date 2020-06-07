<#.
Author - Learn2Automate
About - This script will ping a list of computers either user provided input or all AD computers in default domain
Usage - call function by Check-Ping -computers ad01,ad02,abc01  or Check-Ping to run against all systems in AD
.#>

Function Check-Ping
{

Param(
      [String[]] $Computers
     )

if($Computers -eq $null)
{
import-module activedirectory # Not neccesary with new PS Version but a good practice 
$Computers = get-adcomputer -Filter {enabled -eq "true"} | select -ExpandProperty Name #Don't forget to provide -Searchbase if you would like specify your DN path like DC=Automation,DC=local
}
$list = @()
foreach($comp in $Computers)
{

If (Test-Connection -ComputerName $comp -Count 1 -ErrorAction SilentlyContinue){  # You can change -Count as you would like, and remove -erroraction if you like
$PingPass = "True"
}
else{
$PingPass =  "False"
}

$psoutput = [PSCustomObject]@{
ComputerName = $comp
Status = if($PingPass -eq "True"){"Online"} else{"Offline"}
}
$list += $psoutput
Clear-Variable PingPass
}

$list | Export-Csv -notypeinformation c:\temp\pingResult.csv
return $list # PS by default sends it all to Pipe so this will be logically equal to return $return  

}
