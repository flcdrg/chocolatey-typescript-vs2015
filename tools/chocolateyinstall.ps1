$ErrorActionPreference = 'Stop';

$packageName= 'typescript-vs2015'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://download.microsoft.com/download/6/D/8/6D8381B0-03C1-4BD2-AE65-30FF0A4C62DA/TS1.7.6-D14OOB.24809.00/TypeScript_Full.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = "/quiet /log `"$env:TEMP\chocolatey\$($packageName)\$($packageName).Install.log`""            
  validExitCodes= @(0)

  softwareName  = 'TypeScript Tools for Microsoft Visual Studio 1.7.6.0'
  checksum      = 'E5D6C0B678B31F9DD5FD2989C5F681B0'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs