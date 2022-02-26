#Counts all computers from multiples sites in specific OU.

$Sites = 'Site01','Site02','Site03'


foreach ($Site in $Sites){
    $Path = Get-ADComputer -SearchSite "OU=Computers,OU=$Site,DC=CORP,DC=COM" -Filter *

    write-host "Site:"  $Site -ForegroundColor Cyan
    write-host "PMO:" $Path.count -ForegroundColor Magenta
}

