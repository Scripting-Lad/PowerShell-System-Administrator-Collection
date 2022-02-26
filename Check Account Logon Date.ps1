$users = get-content $home\Desktop\Accounts.csv

$out = foreach($user in $users){
    get-aduser -identity $user -properties Name, LastlogonDate | 
    Select-Object Name,enabled,LastLogonDate 
}

$out | export-csv -path $home\Desktop\Account_LogonDate.csv
