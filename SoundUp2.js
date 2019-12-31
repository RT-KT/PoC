var oShell = new ActiveXObject("WScript.Shell");
for (count = 0; count < 20; count++) {
  oShell.SendKeys(String.fromCharCode(0xAF));
};
oShell.Run("CMD /C start chrome.exe https://www.youtube.com/watch?v=cPJUBQd-PNM",0);
