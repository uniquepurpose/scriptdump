Import-Module ActiveDirectory

$list = Get-ADGroup -Filter 'Name -like "*Admins*" -or Name -like "*Infrastructure*" -or Name -like "*Servers*"' -SearchBase "OU=ServerRoles,DC=mydomain,DC=local"|select name
$list += Get-ADGroup -Filter 'Name -like "*SpecialUsers*" -or Name -like "*ServiceAccounts*" -or Name -like "*Servers*"' -SearchBase "OU=UserRoles,DC=mydomain,DC=local"|select name
$list | Sort-Object Name
