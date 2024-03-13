<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" doctype-system="about:legacy-compat" />

    
    <xsl:template match="/">
        <html>
            <head>
                <title>Notas de Alumnos</title>
                <style type="text/css">
                    body { font-family: Arial, sans-serif; }
                    .tabla-contenidos { position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); }
                    .sobresaliente { color: blue; }
                    .notable { color: lightblue; }
                    .bien { color: black; }
                    .suficiente { color: orange; }
                    .suspenso { color: red; }
                </style>
            </head>
            <body>
                <div class="tabla-contenidos">
                    <table border="1">
                  
                        <thead>
                            <tr>
                                <th colspan="3">Datos</th>
                                <th colspan="3">Notas</th>
                            </tr>
                            <tr>
                                <th>Nombre</th>
                                <th>Apellidos</th>
                                <th>Cuestionarios</th>
                                <th>Tareas</th>
                                <th>Examen</th>
                                <th>Final</th>
                            </tr>
                        </thead>
                
                        <tbody>
                            <xsl:apply-templates select="notas/alumno[@convocatoria='Junio']" />
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>


    <xsl:template match="alumno">
        <tr>
            <td><xsl:value-of select="nombre" /></td>
            <td><xsl:value-of select="apellidos" /></td>
            <td><xsl:value-of select="cuestionarios" /></td>
            <td><xsl:value-of select="tareas" /></td>
            <td><xsl:value-of select="examen" /></td>
            <td>
                <xsl:choose>
                    <xsl:when test="final >= 9">
                        <span class="sobresaliente">Sobresaliente</span>
                    </xsl:when>
                    <xsl:when test="final >= 7">
                        <span class="notable">Notable</span>
                    </xsl:when>
                    <xsl:when test="final >= 6">
                        <span class="bien">Bien</span>
                    </xsl:when>
                    <xsl:when test="final >= 5">
                        <span class="suficiente">Suficiente</span>
                    </xsl:when>
                    <xsl:otherwise>
                        <span class="suspenso">Suspenso</span>
                    </xsl:otherwise>
                </xsl:choose>
            </td>
        </tr>
    </xsl:template>


    <xsl:template match="matricula" />

</xsl:stylesheet>
