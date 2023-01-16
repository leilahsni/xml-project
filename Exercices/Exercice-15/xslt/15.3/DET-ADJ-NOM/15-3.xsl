<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="utf-8"/>
    <xsl:template match="/">
        <xsl:for-each select="baselexicometrique/trame/items/item">
            <xsl:if test="c='Adj' and preceding-sibling::item[2]/c='D' and following-sibling::item[2]/c='N'">
                <xsl:value-of select="concat(preceding-sibling::item[2]/f, ' ', f, ' ', following-sibling::item[2]/f, '&#xA;')"/>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>