
Enable-PSRemoting -SkipNetworkProfileCheck -Force
Set-Item wsman:\localhost\client\trustedhosts *

cd wsman:localhost\Client

Set-Item AllowUnencrypted -Value $true -force
Set-Item TrustedHosts -Value * -force

Restart-Service WinRM