
$ProfileInfoStorage = "$env:OneDriveConsumer\Scripts\Powershell\Profiles\XML-JSON Storage\Profile-Info\$env:COMPUTERNAME\"
function Redo-PersonalProfile {
    @(
        $Profile.AllUsersAllHosts,
        $Profile.AllUsersCurrentHost,
        $Profile.CurrentUserAllHosts,
        $Profile.CurrentUserCurrentHost
    ) | ForEach-Object {
        if (Test-Path $_) {
            Write-Verbose "Running $_"
            . $_
        }
    }
    Reset-ProfileScripts
    <#
.SYNOPSIS

Reloads all Powershell Profile files

.DESCRIPTION

Reloads all Powershell Profile files by first removing custom modules and running the profile again without restarting the host.

.INPUTS

None. You cannot pipe objects to Redo-Profile.

.OUTPUTS

None. This will reload all Profile scripts.


.EXAMPLE

PS> Redo-Profile

.LINK

https://github.com/skyhoshi/PersonalProfileModule

#. LINK

Set-Item
#>
}

function Reset-PersonalProfileScripts {
    . "$env:OneDriveConsumer\Scripts\Powershell\Profiles\Scripts\SystemProfiles\SymbolicLinks\SetupProfileSymbolicLinks.ps1"
    . "$env:OneDriveConsumer\Scripts\Powershell\Profiles\Scripts\Open-SSH\RobotSSH.ps1"
}


function Register-PersonalProfileManager {
    

}
