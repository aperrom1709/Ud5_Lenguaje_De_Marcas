<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
 <html>
 <body>
    <h2>Canciones de U2</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Título del Álbum</th>
        <th>Canciones</th>
      </tr>
      <xsl:for-each select="cds/cd[artista='U2']">
      <tr>
        <td><xsl:value-of select="titulo_album"/></td>
        <td>
          <xsl:for-each select="canciones/cancion">
            <xsl:value-of select="titulo"/> - <xsl:value-of select="tiempo"/><br/>
          </xsl:for-each>
        </td>
      </tr>
      </xsl:for-each>
    </table>
 </body>
 </html>
</xsl:template>
</xsl:stylesheet>
