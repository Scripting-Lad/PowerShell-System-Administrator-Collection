Get-ADComputer -Filter * -SearchBase "OU=YOUR,DC=PATH,DC=COM" -Properties SAMAaccountName |
Select-Object SamAccountName |
Export-csv -Path $home\Desktop\List.csv -NoTypeInformation