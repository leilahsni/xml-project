<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8"/>
    
    <xsl:template match="/">
        <xsl:text>Patrons NOM-PRP-NOM-ADJ:&#xA;&#xA;</xsl:text>
        <xsl:apply-templates select="//article"/>
    </xsl:template>
    
    <xsl:template match="article">
        <xsl:for-each select="element">
            <xsl:if test="contains(data[@type='type'],'NOM')">
            <xsl:variable name="e1" select="data[@type='string']"/>
            <xsl:if test="contains(following-sibling::element[1]/data[@type='type'],'PRP')">
                <xsl:variable name="e2" select="following-sibling::element[1]/data[@type='string']"/>
                <xsl:if test="contains(following-sibling::element[2]/data[@type='type'],'NOM')">
                    <xsl:variable name="e3" select="following-sibling::element[2]/data[@type='string']"/>
                    <xsl:if test="contains(following-sibling::element[3]/data[@type='type'],'ADJ')">
                        <xsl:variable name="e4" select="following-sibling::element[3]/data[@type='string']"/>
                        <xsl:value-of select="concat($e1, ' ', $e2, ' ', $e3, ' ', $e4, '&#xA;')"/>
                </xsl:if>
            </xsl:if>
        </xsl:if>
        </xsl:if>
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>