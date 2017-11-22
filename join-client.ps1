Write-Host "This script will add the client computer to a domain"
Write-Host "Make sure that the client computer is already added to Computers group on AD"

$domainname = $(Read-Host "Enter domain with the extension (ex: domain.com)")
$credential = $(Read-Host "Enter domain admin credential (ex: domain\administrator)")

Add-computer -domainname $domainname -credential $credential

Read-Host "Done. Please Enter to close..."