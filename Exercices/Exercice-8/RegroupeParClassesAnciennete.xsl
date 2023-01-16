<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" encoding="UTF-8"/>
    <xsl:template match="table">
        <html>
            <head>
                <style>
                    body{background-color:#FDDCD8;}
                    table{margin-left:auto;margin-right:auto;width:90%;border-collapse:collapse;text-align:center;font-family:helvetica;}
                    thead{background-color:#C24754;color:white;font-size:15px;}
                    td{padding:20px;}
                    .table-body{background-color:#FCCAC5;color:#6C232B;font-size:13px;}
                    .table-body:hover{background-color:#ffd5d1;}
                    .type{color:#C34655;}
                    h1{color:#D1757E;text-align:center;font-family:helvetica;font-size:25px;}
                    #head{background-color:#FCCAC5;color:#6C232B;font-size:15px;border-bottom-style:double;border-top-style:double;}
                </style>
                <meta charset="UTF-8"/>
                <title>Exercice 8</title>
            </head>
            <body>
                <h1>Les infirmières du corpus Prématurés00</h1>
                <table>
                    <thead>
                        <tr>
                            <td>ID</td>
                            <td>Age</td>
                            <td>Années d'études</td>
                            <td>Diplôme</td>
                            <td>Ancienneté</td>
                            <td>Service</td>
                        </tr>
                    </thead>
                    <xsl:for-each select="ligne">
                        <xsl:if test="not(preceding-sibling::ligne/classe_anciennete=classe_anciennete)">
                            <tr>
                                <td id="head" colspan="6">
                                    <xsl:value-of select="classe_anciennete"/>
                                </td>
                            </tr>
                        </xsl:if>
                        <tr class="table-body">
                            <td>
                                <xsl:value-of select="*[1]"/>
                            </td>
                            <td>
                                <xsl:value-of select="*[2]"/>
                            </td>
                            <td>
                                <xsl:value-of select="*[3]"/>
                            </td>
                            <td>
                                <xsl:value-of select="*[4]"/>
                            </td>
                            <td>
                                <xsl:value-of select="*[5]"/>
                            </td>
                            <td>
                                <xsl:value-of select="*[7]"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>