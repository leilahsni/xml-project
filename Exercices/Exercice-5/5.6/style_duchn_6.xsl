<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
        <xsl:output method="text" encoding="UTF-8"/>
        <xsl:template match="/cordial2xml">
            <xsl:for-each select="//w">
                <xsl:choose>
                    <xsl:when test="categorie[starts-with(text(),'N')] and following-sibling::w[1]/categorie[starts-with(text(),'ADJ')]">
                        <xsl:value-of select="concat(forme, ' ', following-sibling::w[1]/forme, '&#xA;')"/>
                    </xsl:when>
                </xsl:choose>
            </xsl:for-each>
        </xsl:template>
</xsl:stylesheet>