$Username = 'username@domain'
$Password = 'supersecretpassword'
$Server = 'remoteserver'

$pass = ConvertTo-SecureString -AsPlainText $Password -Force
$Cred = New-Object System.Management.Automation.PSCredential -ArgumentList $Username,$pass

Invoke-Command -ComputerName $Server -ScriptBlock { taskkill /F /FI "SERVICES eq .TOTVS_PROTHEUS12_HOMOLOG__3045" } -Credential $Cred
Invoke-Command -ComputerName $Server -ScriptBlock { taskkill /F /FI "SERVICES eq .TOTVS_PROTHEUS12_HOMOLOG_" } -Credential $Cred

Invoke-Command -ComputerName $Server -ScriptBlock { Net Start .TOTVS_PROTHEUS12_HOMOLOG__3045 } -Credential $Cred
Invoke-Command -ComputerName $Server -ScriptBlock { Net Start .TOTVS_PROTHEUS12_HOMOLOG__3046 } -Credential $Cred
