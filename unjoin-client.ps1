Write-Host "This script will remove the client computer from a domain"

$credential = $(Read-Host "Enter the domain admin credential (ie domain\administrator)") 
Remove-computer -credential $credential