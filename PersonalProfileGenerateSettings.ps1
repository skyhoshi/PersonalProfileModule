function New-PowershellProfile {
    [CmdletBinding()]
    param (
        [Parameter()]
        [string]
        $profileName
    )
    
}

function New-PersonalProfile {
    [CmdletBinding()]
    param (
        [Parameter()]
        [string]
        $profileName
    )
    if (!(Test-Path -Path $profileName)) {
        New-Item -ItemType File -Path $profileName -Force
    }
}

function Register-LocalPersonalProfileManager {
    Register-PSRepository -Name SorafamilyNuGetRepo -SourceLocation http://nuget.sorafamily.com/nuget/ -ScriptSourceLocation http://nuget.sorafamily.com/nuget -InstallationPolicy Trusted
}

function Connect-PersonalProfileJson {
    
    #Test-Json -Json -Schema
    #[System.Environment]::GetFolderPath("UserProfile")
    #[System.Enum]::GetNames([System.Environment+SpecialFolder])
    foreach ($foldername in  [System.Enum]::GetNames([System.Environment+SpecialFolder])) {
        $folder = [System.Environment]::GetFolderPath($foldername);
        if ($folder -ne [string]::Empty) {
       
        }
    }
}

function Initialize-PersonalProfileJson{

}