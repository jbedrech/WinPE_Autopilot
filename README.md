How to silently create an Autopilot Hardware Hash in WinPE and upload the Hash unattended using Symantec ITMS
If you ever want to know if it´s possible to silently create an Autopilot Hardware Hash in WinPE and upload the generated Hash unattended in your Intune Tenant than continue to read the Blogpost. 
I´m focusing on using that technique for Altiris Deployment Solution but this can simply be modified to make it work with other Deployment Solution like Ghost Solution Suite, WDS, MDT, …. to name a few.
Before we start as usual here are some requirements… 
Prerequisites:
•	Download Files from Github repository
•	OA3tool.exe from Windows ADK 
•	Create an Entra ID App registration
•	Modify the Upload_Hash.ps1 File using your Tenant ID, AppID and Secret
•	WinPE with Powershell and PS Gallary Support in WinPE
•	PCPKsp.dll File from Windows 10 / Windows 11 (C:\Windows\System32)
