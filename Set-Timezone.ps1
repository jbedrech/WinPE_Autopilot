# Define the time server URL
$TimeServerUrl = "time.google.com"

# Get the current date and time from the time server
$DateTime = (Invoke-WebRequest -Uri $TimeServerUrl -UseBasicParsing).Headers.Date

# Set the system date and time
Set-Date -Date $DateTime
