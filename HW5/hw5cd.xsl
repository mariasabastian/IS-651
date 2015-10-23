<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  
	xmlns="http://www.w3.org/1999/xhtml"  
	xmlns:xsi="http://userpages.umbc.edu/~mariaps1" >
<xsl:template match="/">
<html>
<body>
<h2>My CD Collection</h2>
<table Border="3">
<tr>
<th>Title</th>
<th>Artist</th>
</tr>
<xsl:apply-templates/>
</table>
</body>
</html>
</xsl:template>

<xsl:template match="xsi:cd">	
<tr>
<td><xsl:apply-templates select="xsi:title"/></td>
<td><xsl:apply-templates select="xsi:artist"/></td>
</tr>
</xsl:template>

<xsl:template match="xsi:title">
<span style="color:#ff0000">
<xsl:value-of select="."/></span>
</xsl:template>

<xsl:template match="xsi:artist">
<span style="color:#00ff00">
<xsl:value-of select="."/></span>
</xsl:template>
</xsl:stylesheet>
