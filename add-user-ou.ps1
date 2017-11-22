Write-Host "This script will create new user and will add it to existing Organizational Unit"
Write-Host " "

$newuser = $(Read-Host "Enter new AD User name")
$ouname = $(Read-Host "Enter OU name you wish to join")
$domainname = $(Read-Host "Enter Domain Name")
$domainext = $(Read-Host "Enter Domain Extension (ie: .org .com)")

New-ADUser -Name $newuser -Path "OU=$ouname,DC=$domainname,DC=$domainext"

Write-Host "Done creating account $newuser."
Write-Host "Added to $ouname."

Set-ADAccountPassword -Identity $newuser

Enable-ADAccount -Identity $newuser

Read-Host "Done. Press Enter to close..."