<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8"/>
    <xsl:template match="/cordial2xml">
        <html>
            <head>
                <style>
                    body{padding: 10px; font-family:arial;font-size:14px;word-wrap: break-word;background-color:#E8E6DC;color:#6B6645;}
                    h1{font-size:25px;font-family:monospace;padding:10px;background-color:#b2ac88;color:white;}
                    .match{color:blue;}
                </style>
            </head>
            <body>
                <h1 align="center">Exercice 5 - Question 1</h1>
                <xsl:apply-templates select="w"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="w">
        <xsl:choose>
            <xsl:when test="following-sibling::w[1]/forme='.'">
                <xsl:value-of select="concat(forme, following-sibling::w[1]/forme)"/>
                <p/>
            </xsl:when>
            <xsl:when test="following-sibling::w[1]/forme=','">
                <xsl:value-of select="concat(forme,following-sibling::w[1]/forme)"/>
                <xsl:text></xsl:text>
            </xsl:when>
            <xsl:when test='contains(forme, "&apos;")'>
                <xsl:value-of select="concat(forme,'')"/>
            </xsl:when>
            <xsl:when test="forme =','">
                <xsl:text></xsl:text>&#160;
            </xsl:when>
            <xsl:when test="forme ='.'">
                <xsl:text></xsl:text>
            </xsl:when>
            <xsl:when test="forme ='...'">
                <xsl:value-of select="forme"/>
                <xsl:text></xsl:text>
            </xsl:when>
            <xsl:when  test="contains(following-sibling::w[1]/forme, '...')">
                <xsl:value-of select="concat(forme,'')"/>
            </xsl:when>
            <xsl:when  test="contains(preceding-sibling::w[1]/forme, '...')">
                <xsl:value-of select="concat(' ', forme, ' ')"/>
            </xsl:when>
            <xsl:when test="contains(forme,'.')">
                <xsl:value-of select="concat(substring-before(forme,'.'),'.')"/>&#160;
                <xsl:value-of select="concat(substring-after(forme,'.'),' ')"/>
            </xsl:when>
            <xsl:when test="contains(following-sibling::w[1]/forme,'-')">
                <xsl:value-of select="concat(forme,following-sibling::w[1]/forme)"/>
            </xsl:when>
            <xsl:otherwise>
                <xsl:value-of select="forme"/>
                <xsl:text> </xsl:text>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
</xsl:stylesheet>