$ErrorActionPreference = 'Stop';

$packageName= 'typescript-vs2015'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://download.microsoft.com/download/6/D/8/6D8381B0-03C1-4BD2-AE65-30FF0A4C62DA/TS1.8.6-TS-release-1.8-nightly.20160229.1/TypeScript_Dev14Full.exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = "/quiet /norestart /log `"$env:TEMP\chocolatey\$($packageName)\$($packageName).Install.log`""
  validExitCodes= @(0)

  softwareName  = 'TypeScript Tools for Microsoft Visual Studio 2015 1.8.6.0'
  checksum      = '80FB8717FB1D2FC2A62E06C6F239F9D0'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs