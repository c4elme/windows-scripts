$ouname = $(Read-Host "Enter Organizational Unit Name")

New-ADOrganizationalUnit -Name "$ouname"

Write-Host "Done adding $ouname to Organizational Units"

Read-Host "Please Enter to close..."