Write-Host "This script will add new computer to AD"

$computername = $(Read-Host "Enter Client computer name")

New-ADComputer -Name $computername

Set-ADComputer -identity $computername -enabled 1

Read-Host "Done. Please Enter to close..."