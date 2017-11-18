# WebPI Power Shell

**WebPI Power Shell** is a wrapper for **WebPICMD.exe** written in PowerShell and shipped as Powershell Module

**WebPICMD.exe**([WebPI Command line](https://docs.microsoft.com/en-us/iis/install/web-platform-installer/web-platform-installer-v4-command-line-webpicmdexe-rtw-release#using-webpicmdexe)) is a command line tool for managing **Web Platform Installer**

The **Microsoft Web Platform Installer (Web PI)** is a free tool that makes getting the latest components of the Microsoft Web Platform, including Internet Information Services (IIS), SQL Server Express, .NET Framework and Visual Web Developer easy


# Installation
Module is available on [Powershell Gallery](https://www.powershellgallery.com/packages/WebPI.PS/)

### Inspect
```powershell
PS> Save-Module -Name WebPI.PS -Path <path>
```
### Install
```powershell
PS> Install-Module -Name WebPI.PS
```

# Usage

```powershell
PS> Import-Module WebPI.PS
PS> Invoke-WebPI  /Install /Products:UrlRewrite2
```

**Limitations**

Due to the fact how PS split parameter if there is a comma in it, use double quote so whole string will be treated as a single param.

```diff
-   BAD
- Invoke-WebPI  /Install /Products:UrlRewrite2,WDeploy36
+   GOOD
+ Invoke-WebPI  /Install "/Products:UrlRewrite2,WDeploy36"
```