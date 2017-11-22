Write-Host "This script will change the IP Address of the client/server"
Write-Host "Interface List"

$oldip = (Get-WmiObject Win32_NetworkAdapterConfiguration | where { (($_.IPEnabled -ne $null) -and ($_.DefaultIPGateway -ne $null)) } | select IPAddress -First 1).IPAddress[0]
$wmi = Get-WmiObject win32_networkadapterconfiguration -filter "ipenabled = 'true'" | Where-Object { $_.IpAddress -eq $oldip }

$ipaddress=$(Read-Host "Specify your IP address (ie 192.168.1.10)")   

$mask=$(Read-Host "Enter the subnet mask (ie 255.255.255.0)")   
$defgateway=$(Read-Host "Enter your Default Gateway (ie 192.168.1.1)")   
$dnsaddress=$(Read-Host "Set DNS Server Address/Addresses (ie 8.8.8.8)")

$wmi.EnableStatic($ipaddress, $mask)
$wmi.SetGateways($defgateway, 1)
$wmi.SetDNSServerSearchOrder($dnsaddress)

Read-Host "Done. Press Enter to close..."          