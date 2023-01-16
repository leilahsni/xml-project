<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8"/>
    <xsl:template match="/baseudpipe">
        <html>
            <head>            
                <title>Exercice 14.2 (Question 4)</title>
                <style>
                    body{background-color:#FDDCD8;}
                    table{margin-left:auto;margin-right:auto;width:100%;table-layout:fixed;border-collapse:collapse;text-align:center;font-family:helvetica;}
                    th{background-color:#C24754;color:white;font-size:15px;padding:20px;}
                    td{padding:20px;background-color:#FCCAC5;color:#6C232B;font-size:13px;overflow: hidden; text-overflow: ellipsis;word-wrap: break-word;}
                    #table-body:hover{background-color:#ffd5d1;}
                    h1{color:#D1757E;text-align:center;font-family:helvetica;font-size:25px;}
                    #matches {background-color:#ffcc00;}
                </style>
            </head>
            <body>
                <h1>Exercice 14.2 (Question 4) : Patrons DET-NOUN-ADJ</h1>
                <table>
                    <tr>
                        <th>Titres</th>
                        <th>Descriptions</th>
                    </tr>
                    <xsl:for-each select="//p">
                        <tr id="table-body">
                            <xsl:if test="position() mod 2 = 1">
                                <td>
                                    <xsl:for-each select="item">
                                        <xsl:choose>
                                            <xsl:when test="a[4]='DET' and following-sibling::item[1]/a[4]='NOUN' and following-sibling::item[2]/a[4]='ADJ'">
                                                <span id="matches">
                                                    <xsl:value-of select="a[2]"/>
                                                    <xsl:text> </xsl:text>
                                                </span>
                                            </xsl:when>
                                            <xsl:when test="a[4]='NOUN' and following-sibling::item[1]/a[4]='ADJ' and preceding-sibling::item[1]/a[4]='DET'">
                                                <span id="matches">
                                                    <xsl:value-of select="a[2]"/>
                                                    <xsl:text> </xsl:text>
                                                </span>
                                            </xsl:when>
                                            <xsl:when test="a[4]='ADJ' and preceding-sibling::item[1]/a[4]='NOUN' and preceding-sibling::item[2]/a[4]='DET'">
                                                <span id="matches">
                                                    <xsl:value-of select="a[2]"/>
                                                    <xsl:text> </xsl:text>
                                                </span>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="a[2]"/>
                                                <xsl:text> </xsl:text>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:for-each>
                                </td>
                                <td>
                                    <xsl:for-each select="following-sibling::p[1]/item">
                                            <xsl:choose>
                                                <xsl:when test="a[4]='DET' and following-sibling::item[1]/a[4]='NOUN' and following-sibling::item[2]/a[4]='ADJ'">
                                                    <span id="matches">
                                                        <xsl:value-of select="a[2]"/>
                                                        <xsl:text> </xsl:text>
                                                    </span>
                                                </xsl:when>
                                                <xsl:when test="a[4]='NOUN' and following-sibling::item[1]/a[4]='ADJ' and preceding-sibling::item[1]/a[4]='DET'">
                                                    <span id="matches">
                                                        <xsl:value-of select="a[2]"/>
                                                        <xsl:text> </xsl:text>
                                                    </span>
                                                </xsl:when>
                                                <xsl:when test="a[4]='ADJ' and preceding-sibling::item[1]/a[4]='NOUN' and preceding-sibling::item[2]/a[4]='DET'">
                                                    <span id="matches">
                                                        <xsl:value-of select="a[2]"/>
                                                        <xsl:text> </xsl:text>
                                                    </span>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:value-of select="a[2]"/>
                                                    <xsl:text> </xsl:text>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                    </xsl:for-each>
                                </td>
                            </xsl:if>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>