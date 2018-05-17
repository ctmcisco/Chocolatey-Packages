$packageName = 'WindowsAdminCenter1804.25'
$installerType = 'MSI'
$url = 'http://download.microsoft.com/download/1/0/5/1059800B-F375-451C-B37E-758 FFC7C8C8B/WindowsAdminCenter1804.25.msi'
$InstallerLogLocation = "$env:temp\WindowsAdminCenter1804.25.log"
$silentArgs = "/qn /l*v $InstallerLogLocation"
$validExitCodes = @(0,3010,1614)
$checksum      = '7BCFCAE5522092B8DC052C5D32BBBE51BFB5A5E7'
$checksumType  = 'SHA1'

Write-Output "Installer log file is `"$InstallerLogLocation`" for more details."

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes  -checksum $checksum -checksumType $checksumType

