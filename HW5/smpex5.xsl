<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns="http://www.w3.org/1999/xhtml"
xmlns:xsi="http://userpages.umbc.edu/~mariaps1">

<xsl:template match="/">
  <html>
  <body>
  <h2>My CD Collection</h2>  
  <xsl:apply-templates/>  
  </body>
  </html>
</xsl:template>

<xsl:template match="xsi:cd">
  <ul>
    <li><xsl:apply-templates select="xsi:title"/>
    <xsl:apply-templates select="xsi:artist"/></li>
  </ul>
</xsl:template>

<xsl:template match="xsi:title">
  Title: <span style="color:#ff0000">
  <xsl:value-of select="."/></span>
</xsl:template>

<xsl:template match="xsi:artist">
  Artist: <span style="color:#00ff00">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>

</xsl:stylesheet>

