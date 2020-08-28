# PersonalProfileModule

Powershell Module to manage Profile scripts. Load, Reload, and Expand Scripts within your script folder

## Description

This Module is intended to help manage your profile in conjunction with OneDrive Storage allowing you to create Powershell Profile Scripts and extend your custom scripts and profiles all while storing them in known folders which are intended to be alertable via the ~/.config/powershell.settings/powershell.profile.settings.json File that is generated upon first run of any command in the module.

Note
This Module works best with OneDrive Setup and Configured Prior to execution.
If you setup OneDrive AFTER First Use, you will need to manually edit configuration.

## Configuration

### ~/.config/powershell.settings/powershell.profile.settings.json

| Setting | Nested : Class | Required | Description |
|:---|---|---|---:|

(will fill in as Used)

## Usage

### Command List

#### Settings

```powershell
# PersonalProfileGenerateSettings has all the settings predefined in Powershell OBJ's and will be generated if a settings file doesn't exist.
```

#### Registry Profile

```txt
Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList
```
