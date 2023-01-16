<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" encoding="utf-8"/>
    <xsl:template match="/baseudpipe">
        <xsl:for-each select="p[position() mod 2 = 0]/item">
            <xsl:if test="contains(a[8],'obj')">
                <xsl:variable name="gov_position" select="a[7]"/>
                <xsl:variable name="dep_position" select="a[1]"/>
                <xsl:variable name="forme_gov" select="a[2]"/>
                <xsl:choose>
                    <xsl:when test="$gov_position &lt; $dep_position">
                        <xsl:variable name="forme_dep" select="preceding-sibling::item[a[1]=$gov_position]/a[2]/text()"/>
                        <xsl:value-of select="concat($forme_gov, ' ---[obj]--> ', $forme_dep, '&#xA;')"/>
                </xsl:when>
                    <xsl:when test="$gov_position > $dep_position">
                        <xsl:variable name="forme_dep" select="following-sibling::item[a[1]=$gov_position]/a[2]/text()"/>
                        <xsl:value-of select="concat($forme_gov, ' ---[obj]--> ', $forme_dep, '&#xA;')"/>
                    </xsl:when>
                </xsl:choose>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>

<!-- sur le terminal : xsltproc 14-2-5-TITRES.xsl corpus-titre-description.udpipe.xml | sort | uniq -c | sort -gr > 14-2-5-DESCRIPTIONS.txt -->