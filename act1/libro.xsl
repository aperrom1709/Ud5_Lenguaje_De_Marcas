<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
 <html>
 <body>
    <h2>Mi biblioteca personal</h2>
    <table border="1" bgcolor="#ADD8E6">
<tr bgcolor="#887788">
<th>Titulo</th>
<th>Autor</th>
</tr>
<xsl:for-each select="libreria/libro">
<tr>
<td><xsl:value-of select="precio"/></td>
<td><xsl:value-of select="isbn"/></td>
<td><xsl:value-of select="titulo"/></td>
<td><xsl:value-of select="autor"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
