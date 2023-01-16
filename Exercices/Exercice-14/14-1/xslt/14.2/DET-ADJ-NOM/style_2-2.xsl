<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8"/>
    
    <xsl:template match="/">
        <xsl:text>Patrons DET-ADJ-NOM:&#xA;&#xA;</xsl:text>
        <xsl:apply-templates select="//element"/>
    </xsl:template>
    
    <xsl:template match="element">
            <xsl:if test="data[@type='type']='ADJ' and following-sibling::element[1][data[@type='type']='NOM'] and contains(preceding-sibling::element[1][data[@type='type']], 'DET')">
                <xsl:value-of select="concat(preceding-sibling::element/data[@type='string'], ' ', data[@type='string'], ' ', following-sibling::element/data[@type='string'], '&#xA;')"/>
            </xsl:if>
    </xsl:template>
    
</xsl:stylesheet>
