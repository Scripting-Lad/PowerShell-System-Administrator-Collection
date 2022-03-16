$targetlist = import-csv $home\Desktop\Accounts.csv

foreach ($target in $targetlist) {
    try{
        get-aduser -Identity $target.samAccountName | 
        Set-ADObject -ProtectedFromAccidentalDeletion:$false -PassThru | 
        Remove-ADUser -Confirm:$false
    }
    catch {
        write-host $Target.name + " Does Not Exist."
    } 
}
" "
" "
write-host "Deletion Complete." 
