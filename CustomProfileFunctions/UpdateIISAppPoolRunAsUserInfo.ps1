Import-Module WebAdministration;
#$cred = Get-Credential

Get-ItemProperty . | Select-Object -Property processModel -ExpandProperty processModel
Set-ItemProperty IIS:\AppPools\app-pool-name -name processModel -value @{userName="user_name";password="password";identitytype=3}

<#
Import-Module WebAdministration;
Get-ChildItem -Path IIS:\AppPools\ | 
Select-Object name, state, managedRuntimeVersion, managedPipelineMode, @{e={$_.processModel.username};l="username"}, <#@{e={$_.processModel.password};l="password"}, # > @{e={$_.processModel.identityType};l="identityType"} |
format-table -AutoSize

#>

<#
$sid = New-Object System.Security.Principal.SecurityIdentifier (
    Get-Item IIS:\AppPools\$Name | select -ExpandProperty applicationPoolSid
)

$identity = $sid.Translate([System.Security.Principal.NTAccount])

$identity.Value 

IIS APPPOOL\MyAppPool

#>


