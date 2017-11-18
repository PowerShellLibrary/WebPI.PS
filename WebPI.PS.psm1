function Get-CurrentModule () {
    Get-Module | ? { $_.Name -eq "WebPI.PS" } | Select-Object -First 1
}

function Get-CurrentModulePath () {
    $CurrentModule = Get-CurrentModule
    $ModuleItem = Get-Item $CurrentModule.Path
    $ModuleItem.Directory.FullName
}

function Invoke-WebPI () {
    $CurrentModulePath = Get-CurrentModulePath
    $arguments = $args | % { $_}
    & "$CurrentModulePath\webpi\WebpiCmd.exe" $arguments
}

$exportModuleMemberParams = @{
    Alias    = @('webpi')
    Function = @(
        'Invoke-WebPI'
    )
}

Export-ModuleMember @exportModuleMemberParams
