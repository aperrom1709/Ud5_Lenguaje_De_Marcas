<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
 <html>
 <body>
    <h2>Lista de CDs</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Título del Álbum</th>
        <th>Artista</th>
        <th>Canciones</th>
        <th>Sello Discográfico</th>
        <th>Año de Publicación</th>
      </tr>
      <xsl:for-each select="cds/cd">
      <tr>
        <td><xsl:value-of select="titulo_album"/></td>
        <td><xsl:value-of select="artista"/></td>
        <td>
          <xsl:for-each select="canciones/cancion">
            <xsl:value-of select="titulo"/> - <xsl:value-of select="tiempo"/><br/>
          </xsl:for-each>
        </td>
        <td><xsl:value-of select="sello_discografico"/></td>
        <td><xsl:value-of select="anio_publicacion"/></td>
      </tr>
      </xsl:for-each>
    </table>
 </body>
 </html>
</xsl:template>
</xsl:stylesheet>
