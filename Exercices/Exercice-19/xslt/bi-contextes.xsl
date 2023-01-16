<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8"/>
    <xsl:template match="/tmx/body">
        <html>
            <head>
                <title>Exercice 19</title>
                <style>
                    body{background-color:#FDDCD8;}
                    table{margin-left:auto;margin-right:auto;width:100%;table-layout:fixed;border-collapse:collapse;text-align:center;font-family:helvetica;}
                    th{background-color:#C24754;color:white;font-size:15px;padding:20px;}
                    td{padding:20px;background-color:#FCCAC5;color:#6C232B;font-size:13px;overflow: hidden; text-overflow: ellipsis;word-wrap: break-word;}
                    h1{color:#D1757E;text-align:center;font-family:helvetica;font-size:25px;}
                    table tr > td:hover{background-color:#ffd5d1;}
                    table tr td span {background-color:#ffcc00;}
                </style>
            </head>
        <body>
            <h1>Exercice 19</h1>
            <table>
                <tr>
                    <th>Anglais</th>
                    <th>Français</th>
                </tr>
                <xsl:for-each select="tu">
                    <tr><xsl:if test="./tuv[@xml:lang='en']/seg[contains(text(), 'parallel')]">
                        <td><xsl:value-of select="substring-before(./tuv[@xml:lang='en']/seg, 'parallel')"/>
                            <span>parallel</span>
                        <xsl:value-of select="substring-after(./tuv[@xml:lang='en']/seg, 'parallel')"/></td>
                    </xsl:if>
                        <xsl:if test="./tuv[@xml:lang='fr']/seg[contains(text(), 'parallèle')]">
                            <td><xsl:value-of select="substring-before(./tuv[@xml:lang='fr']/seg, 'parallèle')"/>
                                <span>parallèle</span>
                                <xsl:value-of select="substring-after(./tuv[@xml:lang='fr']/seg, 'parallèle')"/></td>
                    </xsl:if>
                    </tr>
                </xsl:for-each>
            </table>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>