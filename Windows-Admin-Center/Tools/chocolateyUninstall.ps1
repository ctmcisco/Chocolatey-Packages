$packageName = 'WindowsAdminCenter1804.25'
$installerType = 'MSI'
$url = 'http://download.microsoft.com/download/1/0/5/1059800B-F375-451C-B37E-758 FFC7C8C8B/WindowsAdminCenter1804.25.msi'
$validExitCodes = @(0,3010)
$silentArgs = "{332C1E78-1D2F-4A64-B718-68095DC6254B} /qn /l*v $env:temp\WindowsAdminCenter1804.25.log"

Uninstall-ChocolateyPackage -PackageName $packageName `
                                -FileType $installerType `
                                -SilentArgs "$silentArgs" `
                                -ValidExitCodes $validExitCodes

