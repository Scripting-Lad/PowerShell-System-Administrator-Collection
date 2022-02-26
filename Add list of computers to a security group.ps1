$servers = import-csv -Path $home\Desktop\Computers.csv
$Group = "Group Name Here"

ForEach($server in $servers){
    Add-ADGroupMember -Identity $Group -members $server
}