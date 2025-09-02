# output of left commadn/expression will work as input of right command
Get-Service -Name BITS | Start-Service

Get-Service | Select-Object DisplayName,Status | Format-Table -AutoSize | Out-File "C:\temp\pipeline.txt" -Append