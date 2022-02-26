$computers = get-content $home\Desktop\computers.csv

Remove-ADGroupMember -Identity "Group Name" -Members $computers