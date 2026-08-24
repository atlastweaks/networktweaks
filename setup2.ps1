$temp = Join-Path $env:TEMP "troubleshoot.exe"

Test-Path $temp
Get-Item $temp | Select-Object FullName,Length
Get-AuthenticodeSignature $temp
