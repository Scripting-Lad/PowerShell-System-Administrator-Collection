$servers = "Server-001","Server-002","Server-003v"

foreach($server in $servers){
    " "
    Write-Host "$server"
    invoke-command -ComputerName $server -ScriptBlock {query user}
}