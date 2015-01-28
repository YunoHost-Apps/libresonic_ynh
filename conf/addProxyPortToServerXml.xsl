<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" indent="yes"/>

<xsl:template match="@*|node()">
        <xsl:copy>
                <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
</xsl:template>

<xsl:template match="Connector">
        <xsl:copy>
                <xsl:attribute name="proxyPort">443</xsl:attribute>
                <xsl:attribute name="scheme">https</xsl:attribute>
                <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
</xsl:template>

</xsl:stylesheet>