Set-LocalUser -Name "rafael" -Password (ConvertTo-SecureString -AsPlainText "Senha1234!" -Force)
Get-LocalUser -Name "rafael" | Enable-LocalUser 
Invoke-WebRequest https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-windows-amd64.zip -OutFile ngrok.zip
unzip ngrok.zip
Copy ngrok.exe C:\Windows\System32
Start-Service -Name audiosrv
cmd /c echo ./ngrok.exe authtoken "1pTaEQ7wV1TzMfcnt1nPicR2TIO_5HFTj9y112Xj8knJkEAQ3" >a.ps1
cmd /c echo cmd /k start ngrok.exe tcp 3389 >>a.ps1
cmd /c echo ping -n 999999 127.0.0.1 >>a.ps1
 Write-Host "Visit: https://dashboard.ngrok.com/endpoints/status to get NGROK IP"
.\a.ps1
