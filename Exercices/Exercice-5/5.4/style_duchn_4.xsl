<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="utf-8"/>
    <xsl:template match="/cordial2xml">
                <xsl:for-each select="w">
                    <xsl:value-of select="categorie"/>
                    <xsl:text>&#xA;</xsl:text>
                </xsl:for-each>
        </xsl:template>
</xsl:stylesheet>
<!-- sur la ligne de commande : xsltproc style_duchn_4.xsl duchn_4.xml | sort | uniq -c | sort -nr > duchn_4.txt -->