# Source: https://community.spiceworks.com/how_to/133509-bulk-export-import-of-windows-wifi-profiles?page=2#how_to_comment_47598

function Export-WLAN {
<#
.SYNOPSIS
Exports all-user WLAN profiles
.DESCRIPTION
Exports all-user WLAN profiles to Xml-files to the specified directory using netsh.exe.
.PARAMETER XmlDirectory
Directory to export Xml configuration-files to
.EXAMPLE
Export-WLAN -XmlDirectory c:\temp\wlan
#>

[CmdletBinding()]
param (
[parameter(Mandatory=$true)]
[string]$XmlDirectory
)

#Export all WLAN profiles to specified directory
$wlans = netsh wlan show profiles | Select-String -Pattern "All User Profile" | Foreach-Object {$_.ToString()}
$exportdata = $wlans | Foreach-Object {$_.Replace(" All User Profile : ",$null)}
$exportdata | ForEach-Object {netsh wlan export profile $_ $XmlDirectory key=clear}
}

function Import-WLAN {
<#
.SYNOPSIS
Imports all-user WLAN profiles based on Xml-files in the specified directory
.DESCRIPTION
Imports all-user WLAN profiles based on Xml-files in the specified directory using netsh.exe
.PARAMETER XmlDirectory
Directory to import Xml configuration-files from
.EXAMPLE
Import-WLAN -XmlDirectory c:\temp\wlan
#>

[CmdletBinding()]
param (
[parameter(Mandatory=$true)]
[string]$XmlDirectory
)

#Import all WLAN Xml-files from specified directory
Get-ChildItem $XmlDirectory | Where-Object {$_.extension -eq ".xml"} | ForEach-Object {netsh wlan add profile filename=($XmlDirectory+"\"+$_.name)}
}
