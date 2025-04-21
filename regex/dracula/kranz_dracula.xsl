<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    exclude-result-prefixes="xs math xd"
    version="3.0">
    
    <xsl:mode on-no-match="shallow-copy"/>
    
    <xsl:template match="text()">
        <xsl:analyze-string select="." regex="((\d{{1,2}})\s([A-Za-z]+)(\.))">
            <xsl:matching-substring>
                <date><xsl:value-of select="regex-group(1)"/></date>
            </xsl:matching-substring>
            <xsl:non-matching-substring>
                <xsl:value-of select="."/> 
            </xsl:non-matching-substring>
        </xsl:analyze-string>
    </xsl:template>
    
    <!--dates-->
    
    <xsl:template match="(p[contains(., 'JOURNAL')])">
        <xsl:analyze-string select="." regex="(JOURNAL)">
            <xsl:matching-substring>
                <journal><xsl:value-of select="regex-group(1)"/></journal>
            </xsl:matching-substring>
            <xsl:non-matching-substring>
                <xsl:value-of select="."/> 
            </xsl:non-matching-substring>
        </xsl:analyze-string>
    </xsl:template>
    
    <!--journal tags-->
    
    <xsl:template match="(p[contains(., 'DIARY')])">
        <xsl:analyze-string select="." regex="(DIARY)">
            <xsl:matching-substring>
                <diary><xsl:value-of select="regex-group(1)"/></diary>
            </xsl:matching-substring>
            <xsl:non-matching-substring>
                <xsl:value-of select="."/> 
            </xsl:non-matching-substring>
        </xsl:analyze-string>
    </xsl:template>
    
    <!--diary tags-->
    
</xsl:stylesheet>