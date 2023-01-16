<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text" encoding="utf-8"/>
    <xsl:key name="word" match="w" use="forme" />
    <xsl:template match="/cordial2xml">
                <xsl:text>Exercice 5 - Question 3&#xA;&#xA;</xsl:text>
                <xsl:text>Les mots contenant 'citoy' :&#xA;&#xA;</xsl:text>
                <xsl:for-each select="w[generate-id(.)=generate-id(key('word', forme))]">
                            <xsl:variable name="var" select="key('word', forme)"/>
                            <xsl:if test="contains(forme, 'citoy')">
                                <xsl:variable name="citoy" select="forme"/>
                                <xsl:value-of select="concat(forme, ' : ', count(//w/forme[text()=$citoy]), '&#xA;')"/>
                            </xsl:if>
                   </xsl:for-each>
                <xsl:text>&#xA;Les mots contenant 'patriot' :&#xA;&#xA;</xsl:text>
                   <xsl:for-each select="w[generate-id(.)=generate-id(key('word', forme))]">
                            <xsl:variable name="var" select="key('word', forme)"/>
                            <xsl:if test="contains(forme, 'patriot')">
                                <xsl:variable name="patriot" select="forme"/>
                                <xsl:value-of select="concat(forme, ' : ', count(//w/forme[text()=$patriot]), '&#xA;')"/>
                            </xsl:if>
                        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
<!-- sur la ligne de commande : xsltproc style_duchn_3.xsl duchn_3.xml > duchn_3.txt -->