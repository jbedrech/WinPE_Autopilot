#Get Modules needed for Installation
#PSGallery Support
Invoke-Expression(Invoke-RestMethod sandbox.osdcloud.com)
#install needed Windwos AutoPilotIntune Module
install-module WindowsAutoPilotIntune -SkipPublisherCheck -Force


#Connect MSGraph for Upload
#Variables to change
$TenantID = "your Azure Tenant ID goes here"
$AppID= "your AppID goes here"
$AppSecret = "your AppSecret goes here"

#Connection
Connect-MSGraphApp -Tenant $TenantId -AppId $AppId -AppSecret $AppSecret

#Import Autopilot CSV to Tenant
Import-AutoPilotCSV -csvFile X:\autopilot.csv