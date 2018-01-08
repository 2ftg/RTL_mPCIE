<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl">
  <xsl:template match="/">
    <HTML>
      <BODY>
        <TABLE style="font:8pt MS Sans Serif" border="1" CELLSPACING="0" CELLPADDING="1" BGCOLOR="#FFFFFF">
          <THEAD style="font:bold; background-color:#C0C0C0">
            <TR valign="top">
              <xsl:for-each select="/GRID/COLUMNS/COLUMN">
                <TD align="left">
                  <xsl:attribute name="width"><xsl:value-of select="@Width"/></xsl:attribute>
                  <xsl:value-of select="@Caption"/>
                </TD>
              </xsl:for-each>
            </TR>
          </THEAD>
          <xsl:for-each select="GRID/ROWS/ROW">
          <TR valign="top">
          </TR>
          </xsl:for-each>
        </TABLE>
      </BODY>
    </HTML>
  </xsl:template>
</xsl:stylesheet>
