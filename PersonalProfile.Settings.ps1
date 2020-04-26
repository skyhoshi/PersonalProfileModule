
class PersonalProfileSettings {
    $schema = "https://github.com/skyhoshi/PersonalProfileModule/blob/master/settings/powershell.profile.settings.schema.json"
    [PersonalProfileDefaultFolders]$defaultFolder = $()
}
class PersonalProfileDefaultFolders {
    [string]$Name;
    [string]$Path;
}
class PersonalProfileLoadAtHostStart {
    [string]$Description;
    [string]$File;
    $variables = $()
}
class PersonalProfileLoadAtHostStartFileVariables {
    $replacementValue;
    $template;
}