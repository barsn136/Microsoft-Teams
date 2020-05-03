
# In this case we adding bulk users to microsoft teams groups
# Add list users that you want to upload in CSV File

#Install-Module -Name MicrosoftTeams
Import-Module -Name MicrosoftTeams
#Connect-MicrosoftTeams

write-host "Choose Your Group That You Want"
Start-Sleep -seconds 1
Get-Team                       # Show all Groups in Microsoft Teams
Start-Sleep -seconds 1

# Variables
$GroupID = Read-Host "Input here GroupID of Group that you need."       # Choose group that you want to add users
$FilePath =  Read-Host "Input filepath of CSV excel with list users"    # Input filepath of CSV excel with list users

# Add Users From CSV File
Import-Csv -Path $FilePath  | foreach{Add-TeamUser -GroupId $GroupID -user $_.upn}

