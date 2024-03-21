#Get Modules needed for Installation
#PSGallery Support
Invoke-Expression(Invoke-RestMethod sandbox.osdcloud.com)
#install needed Windwos AutoPilotIntune Module
install-module WindowsAutoPilotIntune -SkipPublisherCheck -Force


#Connect MSGraph for Upload
#Variables to change
$TenantID = "9145b481-7043-4c50-a815-8417139ab07a"
$AppID= "dfb51e49-949e-4159-8038-0f60ae87e71e"
$AppSecret = "Flb8Q~hVLH3NuuImJTRy3RGGkfT3XMfovVZLccWJ"

#Connection
Connect-MSGraphApp -Tenant $TenantId -AppId $AppId -AppSecret $AppSecret

#Import Autopilot CSV to Tenant
Import-AutoPilotCSV -csvFile X:\autopilot.csv