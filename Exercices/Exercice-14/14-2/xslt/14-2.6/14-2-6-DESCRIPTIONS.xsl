<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8"/>
    <xsl:template match="/baseudpipe">
        <xsl:for-each select="p[position() mod 2 = 0]/item">
            <xsl:if test="contains(a[8],'obj')">
                <xsl:variable name="gov_position" select="a[7]"/>
                <xsl:variable name="dep_position" select="a[1]"/>
                <xsl:variable name="pos_gov" select="a[4]"/>
                <xsl:choose>
                    <xsl:when test="$gov_position &lt; $dep_position">
                        <xsl:variable name="pos_dev" select="preceding-sibling::item[a[1]=$gov_position]/a[4]/text()"/>
                        <xsl:value-of select="concat($pos_gov, ' ---[obj]--> ', $pos_dev, '&#xA;')"/>
                </xsl:when>
                    <xsl:when test="$gov_position > $dep_position">
                        <xsl:variable name="pos_dev" select="following-sibling::item[a[1]=$gov_position]/a[4]/text()"/>
                        <xsl:value-of select="concat($pos_gov, ' ---[obj]--> ', $pos_dev, '&#xA;')"/>
                    </xsl:when>
                </xsl:choose>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>

<!-- sur le terminal : xsltproc 14-2-6-DESCRIPTIONS.xsl corpus-titre-description.udpipe.xml | sort | uniq -c | sort -gr > 14-2-6-DESCRIPTIONS.txt -->