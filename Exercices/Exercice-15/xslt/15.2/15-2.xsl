<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Exercice 15 – Question 2</title>
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
                <h1>Exercice 15 – Question 2</h1>
                <table>
                <tr>
                    <th>Item</th>
                    <th>POS</th>
                </tr>
                    <xsl:for-each select="baselexicometrique/trame/items/item[@type='forme']">
                <tr id="table-body">
                     <td><xsl:if test="not(f='XXX')">
                          <xsl:value-of select="f"/>
                     </xsl:if></td>
                     <td><xsl:if test="not(f='XXX')">
                         <xsl:value-of select="c"/>
                     </xsl:if></td>
                </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>