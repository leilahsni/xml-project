<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <title>Exercice 14.1</title>
                <style>
                    body{background-color:#FDDCD8;}
                    table{margin-left:auto;margin-right:auto;width:90%;border-collapse:collapse;text-align:center;font-family:helvetica;}
                    thead{background-color:#C24754;color:white;font-size:15px;}
                    td{padding:20px;}
                    .table-body{background-color:#FCCAC5;color:#6C232B;font-size:13px;}
                    .table-body:hover{background-color:#ffd5d1;}
                    .type{color:#C34655;}
                    h1{color:#D1757E;text-align:center;font-family:helvetica;font-size:25px;}
                    #patron {background-color:#d97e87;}
                </style>
            </head>
            <body>
                <h1>Contenu des titres et descriptions d'articles étiquetés dans TreeTagger</h1>
                <table>
                    <thead>
                        <tr>
                            <td>n°</td>
                            <td>Titre</td>
                            <td>Description</td>
                        </tr>
                    </thead>
                    <xsl:for-each select="PARCOURS/FILTRAGE/item">
                    <tr class="table-body">
                        <td><xsl:value-of select="@number"/></td>
                        <td><xsl:for-each select="titre/article/element">
                            <xsl:choose>
                            <xsl:when test="data[@type='type']='NOM' and following-sibling::element[1][data[@type='type']='ADJ']">
                                <span id="patron"><xsl:value-of select="data[@type='string']"/></span>
                                <xsl:text> </xsl:text>
                            </xsl:when>
                            <xsl:when test="data[@type='type']='ADJ' and preceding-sibling::element[1][data[@type='type']='NOM']">
                                <span id="patron"><xsl:value-of select="data[@type='string']"/></span>
                                <xsl:text> </xsl:text>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="concat(data[@type='string'], ' ')"/>
                            </xsl:otherwise>
                            </xsl:choose>
                            <span class="type"><i><xsl:value-of select="concat('[', data[@type='lemma'])"/></i>
                                <xsl:value-of select="concat('|', data[@type='type'], ']', ' ')"/></span>
                        </xsl:for-each>
                           </td>
                        <td><xsl:for-each select="description/article/element">
                            <xsl:choose>
                                <xsl:when test="data[@type='type']='NOM' and following-sibling::element[1][data[@type='type']='ADJ']">
                                    <span id="patron"><xsl:value-of select="data[@type='string']"/></span>
                                    <xsl:text> </xsl:text>
                                </xsl:when>
                                <xsl:when test="data[@type='type']='ADJ' and preceding-sibling::element[1][data[@type='type']='NOM']">
                                    <span id="patron"><xsl:value-of select="data[@type='string']"/></span>
                                    <xsl:text> </xsl:text>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="concat(data[@type='string'], ' ')"/>
                                </xsl:otherwise>
                            </xsl:choose>
                            <span class="type"><i><xsl:value-of select="concat('[', data[@type='lemma'])"/></i>
                                <xsl:value-of select="concat('|', data[@type='type'], ']', ' ')"/></span>                            
                        </xsl:for-each>
                        </td>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>