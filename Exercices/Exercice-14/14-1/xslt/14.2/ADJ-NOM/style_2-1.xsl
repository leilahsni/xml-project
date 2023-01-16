<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8"/>
    
    <xsl:template match="/">
        <xsl:text>Patrons ADJ-NOM:&#xA;&#xA;</xsl:text>
         <xsl:apply-templates select="//element"/>
    </xsl:template>
    
    <xsl:template  match="element">
        <xsl:choose>
            <xsl:when test="data[@type='type']='ADJ' and following-sibling::element[1][data[@type='type']='NOM']">
                <xsl:value-of select="data[@type='string']"/>
            </xsl:when>
            <xsl:when test="data[@type='type']='NOM' and preceding-sibling::element[1][data[@type='type']='ADJ']">
                <xsl:value-of select="concat(' ', data[@type='string'])"/>
                <xsl:text>&#xA;</xsl:text>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    
</xsl:stylesheet>

