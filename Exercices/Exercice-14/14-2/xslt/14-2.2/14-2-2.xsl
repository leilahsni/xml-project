<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8"/>
    <xsl:template match="/baseudpipe">
        <html>
            <head>            
                <title>Exercice 14.2 (Question 1)</title>
                <style>
                    body{background-color:#FDDCD8;}
                    table{margin-left:auto;margin-right:auto;width:100%;table-layout:fixed;border-collapse:collapse;text-align:center;font-family:helvetica;}
                    th{background-color:#C24754;color:white;font-size:15px;padding:20px;}
                    td{padding:20px;background-color:#FCCAC5;color:#6C232B;font-size:13px;overflow: hidden; text-overflow: ellipsis;word-wrap: break-word;}
                    #table-body:hover{background-color:#ffd5d1;}
                    h1{color:#D1757E;text-align:center;font-family:helvetica;font-size:25px;}
                </style>
            </head>
            <body>
                <h1>Exercice 14.2 (Question 1)</h1>
                <table>
                    <tr>
                        <th>Ttitre</th>
                        <th>Description</th>
                    </tr>
                    <xsl:for-each select="//p">
                        <tr id="table-body">
                            <xsl:if test="position() mod 2 = 1">
                            <td>
                                <xsl:for-each select="item">
                                <xsl:value-of select="a[2]"/><xsl:text> </xsl:text>
                                </xsl:for-each>
                            </td>
                                <td>
                                    <xsl:for-each select="following-sibling::p[1]/item">
                                    <xsl:value-of select="a[2]"/><xsl:text> </xsl:text>
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