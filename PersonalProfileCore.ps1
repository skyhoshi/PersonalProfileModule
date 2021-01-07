. "$env:POWERSHELLSCRIPTSTORE\Scripts\Powershell\Modules\PersonalProfileModule\settings\PersonalProfile.Settings.ps1"
. "$env:POWERSHELLSCRIPTSTORE\Scripts\Powershell\Modules\SystemProfileManagementModule\SymbolicLinks\SetupProfileSymbolicLinks.ps1"

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
    . "$env:POWERSHELLSCRIPTSTORE\Scripts\Powershell\Modules\PersonalProfileModule\PersonalProfile.Settings.ps1"
    . "$env:POWERSHELLSCRIPTSTORE\Scripts\Powershell\Modules\SystemProfileManagementModule\SymbolicLinks\SetupProfileSymbolicLinks.ps1"
    #
    . "$env:POWERSHELLSCRIPTSTORE\Scripts\Powershell\Scripts\Open-SSH\RobotSSh.ps1"
}


function Register-PersonalProfileManager {
    

}
