<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="utf-8"/>
    <xsl:template match="/">
        <xsl:for-each select="baselexicometrique/trame/items/item[@type='forme']">
            <xsl:if test="contains(a[7],'SUB')">
                <xsl:value-of select="concat(c, ' --> ', following-sibling::item[2]/c, '&#xA;')"/>
            </xsl:if>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
<!-- command line : xsltproc 15-4.xsl baseTrameurFromRhapsodie.xml | sort | uniq -c | sort -gr > 15-4.txt -->