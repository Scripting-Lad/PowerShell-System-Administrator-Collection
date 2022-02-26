# Edit this line with the filepath to the server IP list.
$serverlist = Get-Content -path $home\Desktop\servers.txt

foreach ($server in $serverlist){
    Resolve-DnsName $server | Select-Object name,ipaddress
} 