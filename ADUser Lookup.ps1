$Users = (Read-Host -Prompt "Enter User's SamAccountName: ")

foreach($user in $users){
" "
write-host $user
Get-ADUser -Identity $user -Properties * | Format-List DisplayName, Name

}