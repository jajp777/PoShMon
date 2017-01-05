Function OperatingSystem
{
    [CmdletBinding()]
    param(
        [string[]]$EventLogCodes = 'Critical',
        [hashtable]$EventIDIgnoreList = @{},
        [double]$CPULoadThresholdPercent = 90,
        [double]$FreeMemoryThresholdPercent = 10,
        [double]$DriveSpaceThreshold = 10, #This is GB
        [string[]]$SpecialWindowsServices = $null
    )

    if ($Script:PoShMon.ConfigurationItems.OperatingSystem -eq $null)
        { $Script:PoShMon.ConfigurationItems.OperatingSystem = @{} }
    else {
        throw "OperatingSystem configuration group already created."
    }

    return @{
            TypeName = "PoShMon.ConfigurationItems.OperatingSystem"
            EventLogCodes = $EventLogCodes
            EventIDIgnoreList = $EventIDIgnoreList
            CPULoadThresholdPercent = $CPULoadThresholdPercent
            FreeMemoryThresholdPercent = $FreeMemoryThresholdPercent
            DriveSpaceThreshold = $DriveSpaceThreshold
            SpecialWindowsServices = $SpecialWindowsServices
        }
}