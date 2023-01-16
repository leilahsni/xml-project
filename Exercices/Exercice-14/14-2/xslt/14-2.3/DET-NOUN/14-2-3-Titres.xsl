<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="utf-8"/>
    <xsl:template match="/baseudpipe">
        <xsl:text>Titres : DET – NOUN&#xA;&#xA;</xsl:text>
        <xsl:for-each select="p[position() mod 2 = 1]/item">
            <xsl:if test="a[4]='DET' and following-sibling::item[1]/a[4]='NOUN'">
                <xsl:value-of select="concat(a[2], ' ', following-sibling::item[1]/a[2], '&#xA;')"/>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>