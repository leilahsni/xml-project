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
                    td:hover{background-color:#ffd5d1;}
                    h1{color:#D1757E;text-align:center;font-family:helvetica;font-size:25px;}
                </style>
            </head>
            <body>
                <h1>Exercice 14.2 (Question 1)</h1>
                <table>
                <tr>
                    <th>ID</th>
                    <th>Form</th>
                    <th>Lemma</th>
                    <th>UPOS</th>
                    <th>XPOS</th>
                    <th>Feats</th>
                    <th>Head</th>
                    <th>DEPREL</th>
                    <th>DEPS</th>
                    <th>Misc</th>
                </tr>
                    <xsl:for-each select="//p[position() mod 2 = 1]/item"> 
                    <tr>
                        <td><xsl:value-of select="a[1]"/><xsl:text> </xsl:text></td>
                        <td><xsl:value-of select="a[2]"/><xsl:text> </xsl:text></td>
                        <td><xsl:value-of select="a[3]"/><xsl:text> </xsl:text></td>
                        <td><xsl:value-of select="a[4]"/><xsl:text> </xsl:text></td>
                        <td><xsl:value-of select="a[5]"/><xsl:text> </xsl:text></td>
                        <td><xsl:value-of select="a[6]"/><xsl:text> </xsl:text></td>
                        <td><xsl:value-of select="a[7]"/><xsl:text> </xsl:text></td>
                        <td><xsl:value-of select="a[8]"/><xsl:text> </xsl:text></td>
                        <td><xsl:value-of select="a[9]"/><xsl:text> </xsl:text></td>
                        <td><xsl:value-of select="a[10]"/><xsl:text> </xsl:text></td>
                    </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

    
</xsl:stylesheet>