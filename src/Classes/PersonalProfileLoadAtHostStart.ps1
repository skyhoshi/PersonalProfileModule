if ($ScriptLocationsContainMustacheValues){
    #Test for Mustache Module being loaded
}else {
    Write-Debug -Message "Mustache Tag Resolve has not been loaded at Personal Profile Start";
    return;
}
class PersonalProfileLoadAtHostStart {
    [string]$Description;
    [string]$File;
    $variables = $()
}