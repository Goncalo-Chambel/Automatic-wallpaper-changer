$file = $args[0]
$location = $args[1]
$Action = New-ScheduledTaskAction -Execute $file -WorkingDirectory $location

$Trigger = New-ScheduledTaskTrigger -Daily -At 10:00am

$Task = New-ScheduledTask -Action $Action -Trigger $Trigger
$Task | Register-ScheduledTask -TaskName 'Change Wallpaper'