Function Check-Ping
{

Param(
      [String[]] $Computers
     )

if($Computers -eq $null)
{
import-module activedirectory
$Computers = get-adcomputer -Filter {enabled -eq "true"} | select -ExpandProperty Name
}
$PingFail = @()
$PingPass = @()
foreach($comp in $Computers)
{
   if(Test-Connection $comp -Count 1 -ErrorAction SilentlyContinue)
    {
    $PingPass += $comp
    }
    else{
    $PingFail += $comp
    }
}
$return = "Ping Pass systems : `n $PingPass `nPing Failed systems : `n $PingFail"
$return
$PingPass | out-file "c:\temp\pingpass.txt"
$PingFail | out-file "c:\temp\pingfail.txt"

}
