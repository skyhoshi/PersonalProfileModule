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

function Initialize-PersonalProfileJson {

}

$AppsToPorts = @{
    Factorio  = @(
        {
            localIp=10.1.11.92
            port=34197
        }
    )
    Minecraft = @(
        {
            localIp=10.1.11.104
            port=25565
        },
        {
            localIp=10.1.11.104
            port=25566
        },
        {
            localIp=10.1.11.104
            port=25567
        },
        {
            localIp=10.1.11.104
            port=25568
        }, {
            localIp=10.1.11.104
            port=25569
        },
        {
            localIp=10.1.11.104
            port=25570
        }        
    )
    WebSites  = @{
        WorkTestSites = @{
            1      = 80
            2      = 443
            3      = 1260
            4      = 1261
            Ranges = @(
                @{
                    Start = 442
                    End   = 445
                },
                @{
                    Start = 1200
                    End   = 1240
                },
                @{
                    Start = 1280
                    End   = 1365
                },
                @{
                    Start = 21475
                    End   = 21575
                }
            )
        }
    }
}