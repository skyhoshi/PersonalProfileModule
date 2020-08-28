. ".\PersonalProfileDefaultFolders.ps1" 
using namespace PersonalProfileDefaultFolders
#Add-Type -Path .\PersonalProfileDefaultFolders.ps1 -OutputType PersonalProfileDefaultFolders;
#Requires -Module PersonalProfileModule;

class PersonalProfileSettings {
    $schema = "https://github.com/skyhoshi/PersonalProfileModule/blob/master/settings/powershell.profile.settings.schema.json"
    [PersonalProfileDefaultFolders]$defaultFolder = $()
    [bool]$ScriptLocationsContainMustacheValues = $false
}