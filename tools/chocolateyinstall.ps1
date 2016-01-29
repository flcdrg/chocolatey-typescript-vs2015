$ErrorActionPreference = 'Stop';

$packageName= 'typescript-vs2015'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://download.microsoft.com/download/6/D/8/6D8381B0-03C1-4BD2-AE65-30FF0A4C62DA/TS1.8.1-Beta-TS-master.20160126.1/TypeScript_Dev14Full.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = "/quiet /log `"$env:TEMP\chocolatey\$($packageName)\$($packageName).Install.log`""            
  validExitCodes= @(0)

  softwareName  = 'TypeScript Tools for Microsoft Visual Studio 2015 1.8.1.0 Beta'
  checksum      = 'FE2FA087EE0F65B1952E702513BB2252'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs