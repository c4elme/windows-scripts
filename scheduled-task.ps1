Write-Host "This script will add new scheduled task and that executes taskmgr.exe"

$action = New-ScheduledTaskAction -Execute "powershell.exe copy-files.ps1"
$trigger = New-ScheduledTaskTrigger -Daily -At 9am

Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "TaskMan Execute" -Description "Execute task manager"