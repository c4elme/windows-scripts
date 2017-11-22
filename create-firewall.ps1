Write-Host "This script will enable ftp ports on firewall"
Read-Host "Press any key to continue..."

New-NetFirewallRule -DisplayName "allowftp" -Direction Inbound -Protocol TCP –Enabled True –Action Allow -LocalPort 20,21,1024-65535 

Write-Host "Done!"