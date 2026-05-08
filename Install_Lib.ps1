if (-not ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    exit
}

$logPath = "$env:USERPROFILE\Desktop\install_log.txt"
Start-Transcript -Path $logPath

dism /online /enable-feature /featurename:NetFx3 /all /norestart
dism /online /enable-feature /featurename:NetFx4-AdvSrvs /all /norestart
dism /online /enable-feature /featurename:DirectPlay /all /norestart

$staticApps = @(
    "Microsoft.VCRedist.2005.x86", "Microsoft.VCRedist.2005.x64",
    "Microsoft.VCRedist.2008.x86", "Microsoft.VCRedist.2008.x64",
    "Microsoft.VCRedist.2010.x86", "Microsoft.VCRedist.2010.x64",
    "Microsoft.VCRedist.2012.x86", "Microsoft.VCRedist.2012.x64",
    "Microsoft.VCRedist.2013.x86", "Microsoft.VCRedist.2013.x64",
    "Microsoft.VCRedist.2015+.x86", "Microsoft.VCRedist.2015+.x64",
    "Microsoft.DirectX",
    "CreativeLabs.OpenAL",
    "Microsoft.XNAFramework.4.0",
    "Nvidia.PhysX",
    "LunarG.VulkanRuntime"
)

foreach ($id in $staticApps) {
    winget install --id $id --silent --accept-package-agreements --accept-source-agreements --upgrade
}

$dynamicQueries = @(
    @{ Search = "EclipseAdoptium.Temurin"; Pattern = "EclipseAdoptium\.Temurin\.\d+\.JRE" },
    @{ Search = "Microsoft.DotNet.DesktopRuntime"; Pattern = "Microsoft\.DotNet\.DesktopRuntime\.\d+$" },
    @{ Search = "Microsoft.DotNet.AspNetCore.Runtime"; Pattern = "Microsoft\.DotNet\.AspNetCore.Runtime\.\d+$" }
)

foreach ($query in $dynamicQueries) {
    $latestID = (winget search $query.Search | Select-String -Pattern $query.Pattern | ForEach-Object { $_.ToString().Split(" ")[0].Trim() } | Sort-Object -Descending | Select-Object -First 1)
    if ($latestID) {
        foreach ($arch in "x86", "x64") {
            winget install --id $latestID --architecture $arch --silent --accept-package-agreements --accept-source-agreements --upgrade
        }
    }
}

Stop-Transcript

Restart-Computer -Force -Delay 60
