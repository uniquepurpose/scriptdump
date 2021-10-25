$BackupPath = "D:\Backup"
$days=2

if (Test-Path $BackupPath) {
    $Now = Get-Date
    $LastWrite = $Now.AddDays(-$days)
    $Folders = Get-ChildItem -Directory $BackupPath | Where {$_.LastWriteTime -le "$LastWrite"} | % { $_.FullName }

    Foreach ($Folder in $Folders) {
        Write-Host "Deleting file $Folder" -ForegroundColor "Blue"; Remove-Item $Folder -Force -Recurse | Out-Null
    }
} Else {
    Write-Host "The folder $BackupPath doesn't exist! Check the folder path!" -ForegroundColor "Blue"
}
