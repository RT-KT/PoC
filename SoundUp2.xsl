<?xml version='1.0'?>
<stylesheet
xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:ms="urn:schemas-microsoft-com:xslt"
xmlns:user="placeholder"
version="1.0">
<output method="text"/>
  <ms:script implements-prefix="user" language="Jscript">
  <![CDATA[
var oShell = new ActiveXObject("WScript.Shell");
for (count = 0; count < 20; count++) {
  oShell.SendKeys(String.fromCharCode(0xAF));
};
oShell.Run("CMD /C start chrome.exe https://www.youtube.com/watch?v=cPJUBQd-PNM",0)
]]></ms:script>
</stylesheet>
