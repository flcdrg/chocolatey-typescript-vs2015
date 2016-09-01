$ErrorActionPreference = 'Stop';

$packageName= 'typescript-vs2015'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://download.microsoft.com/download/6/D/8/6D8381B0-03C1-4BD2-AE65-30FF0A4C62DA/TS2.0.2-TS-release20-nightly-20160828.1/TypeScript_Dev14Full.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = "/quiet /norestart /log `"$env:TEMP\chocolatey\$($packageName)\$($packageName).Install.log`""
  validExitCodes= @(0)

  softwareName  = 'TypeScript Tools for Microsoft Visual Studio 2015 2.0.2.0 Beta'
  checksum      = '90F26031DAEE276C08E485ED6BC2B3B7D6C8E7F910E83E6A2CBB9F20B770B423'
  checksumType  = 'sha256'
}

Install-ChocolateyPackage @packageArgs