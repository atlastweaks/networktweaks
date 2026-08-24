$temp = Join-Path $env:TEMP "troubleshoot.exe"

Test-Path $temp
Get-Item $temp -ErrorAction SilentlyContinue | Select-Object FullName,Length
Get-AuthenticodeSignature $temp -ErrorAction SilentlyContinue | Format-List
