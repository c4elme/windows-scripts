Write-Host "This script will create new GPO Policy and will disable task manager"
$gpo = $(Read-Host "Enter GPO name")
$ou = $(Read-Host "Enter OU")
$domainname = $(Read-Host "Enter domain name (ie: domain)")
$domainext = $(Read-Host "Enter domain extension (ie: com, org, net)")


New-gpo -name $gpo
New-GPLink -name $gpo -Target "OU=$ou,DC=$domainname,DC=$domainext"

Set-GPRegistryValue -Name $gpo  -key "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -ValueName DisableTaskMgr -Type DWORD –value 1
