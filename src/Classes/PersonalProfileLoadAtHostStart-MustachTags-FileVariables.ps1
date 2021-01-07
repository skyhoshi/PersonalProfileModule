if (!(Test-Path -Path Variable:\MustachTagParserLoaded)) {
    if ($MustacheTageParserLoaded) {
        . "$env:POWERSHELLSCRIPTSTORE\Scripts\Powershell\Modules\PersonalProfileModule\settings\Classes\PersonalProfileLoadAtHostStart-MustachTags-FileVariables.ps1";
    }
}

class PersonalProfileLoadAtHostStartFileVariables {
    $replacementValue;
    $template;
}