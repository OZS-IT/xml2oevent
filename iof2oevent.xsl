<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xpath-default-namespace="http://www.orienteering.org/datastandard/3.0">
  <xsl:output method="text" indent="no" />
  <xsl:variable name="delim">;</xsl:variable>
  <xsl:variable name="qout">"</xsl:variable>
  <xsl:variable name="nl"><xsl:text>&#xa;</xsl:text></xsl:variable>

  <xsl:template match="/">
    <xsl:text>@SICSVOE</xsl:text>
    <xsl:value-of select="$nl" />

    <xsl:text>Stno</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Chip</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Database Id</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Surname</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>First name</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>YB</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>S</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Block</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>nc</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Start</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Finish</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Time</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Classifier</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Club no.</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Cl.name</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>City</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Nat</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Cl. no.</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Short</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Long</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Num1</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Num2</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Num3</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Text2</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Text3</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Adr. name</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Street</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Line2</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Zip</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>City</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Phone</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Fax</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>EMail</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Id/Club</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Rented</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Start fee</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Paid</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Course no.</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Course</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>km</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>m</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Course controls</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Pl</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Start punch</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Finish punch</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Control1</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Punch1</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Control2</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Punch2</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Control3</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Punch3</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Control4</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Punch4</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Control5</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>Punch5</xsl:text><xsl:value-of select="$delim" />
    <xsl:text>(may be more) ...</xsl:text>	
    <xsl:value-of select="$nl" />

    <xsl:for-each select="ResultList/ClassResult/PersonResult">
        <xsl:if test="Person/Name/Family!='Vakant'">
          <xsl:value-of select="Result/BibNumber" /><xsl:value-of select="$delim" />
          <xsl:value-of select="Result/ControlCard" /><xsl:value-of select="$delim" />
          <xsl:value-of select="$delim" />
          <xsl:value-of select="concat($qout,Person/Name/Family,$qout)" /><xsl:value-of select="$delim" />
          <xsl:value-of select="concat($qout,Person/Name/Given,$qout)" /><xsl:value-of select="$delim" />
          <xsl:value-of select="$delim" />
          <xsl:value-of select="$delim" />
          <xsl:value-of select="$delim" />
          <xsl:text>0</xsl:text><xsl:value-of select="$delim" />
          <xsl:text>0</xsl:text><xsl:value-of select="$delim" />
          <xsl:text>0</xsl:text><xsl:value-of select="$delim" />
          <xsl:call-template name="secToMinSec"><xsl:with-param name="durationSeconds" select="Result/Time" /></xsl:call-template><xsl:value-of select="$delim" />
          <xsl:call-template name="status"><xsl:with-param name="status" select="Result/Status" /></xsl:call-template><xsl:value-of select="$delim" />
          <xsl:value-of select="Organisation/Id" /><xsl:value-of select="$delim" />
          <xsl:value-of select="concat($qout,Organisation/Name,$qout)" /><xsl:value-of select="$delim" />
          <xsl:value-of select="concat($qout,Organisation/Name,$qout)" /><xsl:value-of select="$delim" />
          <xsl:value-of select="Person/Nationality/@code" /><xsl:value-of select="$delim" />
          <xsl:text>0</xsl:text><xsl:value-of select="$delim" />
          <xsl:value-of select="$qout" /><xsl:value-of select="../Class/Id" /><xsl:value-of select="$qout" /><xsl:value-of select="$delim" />
          <xsl:value-of select="$qout" /><xsl:value-of select="../Class/Id" /><xsl:value-of select="$qout" /><xsl:value-of select="$delim" />
          <xsl:value-of select="$delim" />
          <xsl:value-of select="$delim" />
          <xsl:value-of select="$delim" />
          <xsl:text>""</xsl:text><xsl:value-of select="$delim" />
          <xsl:text>""</xsl:text><xsl:value-of select="$delim" />
          <xsl:text>""</xsl:text><xsl:value-of select="$delim" />
          <xsl:text>""</xsl:text><xsl:value-of select="$delim" />
          <xsl:text>""</xsl:text><xsl:value-of select="$delim" />
          <xsl:text>""</xsl:text><xsl:value-of select="$delim" />
          <xsl:text>""</xsl:text><xsl:value-of select="$delim" />
          <xsl:text>""</xsl:text><xsl:value-of select="$delim" />
          <xsl:text>""</xsl:text><xsl:value-of select="$delim" />
          <xsl:text>""</xsl:text><xsl:value-of select="$delim" />
          <xsl:text>""</xsl:text><xsl:value-of select="$delim" />
          <xsl:value-of select="$delim" />
          <xsl:text>0</xsl:text><xsl:value-of select="$delim" />
          <xsl:text>"0,0"</xsl:text><xsl:value-of select="$delim" />
          <xsl:text>0</xsl:text><xsl:value-of select="$delim" />
          <xsl:value-of select="$delim" />    
          <xsl:text>""</xsl:text><xsl:value-of select="$delim" />
          <xsl:text>""</xsl:text><xsl:value-of select="$delim" />
          <xsl:text>""</xsl:text><xsl:value-of select="$delim" />
          <xsl:value-of select="Result/Position" /><xsl:value-of select="$delim" />
          
          <xsl:value-of select="$delim" />    
          <xsl:call-template name="secToMinSec"><xsl:with-param name="durationSeconds" select="Result/Time" /></xsl:call-template><xsl:value-of select="$delim" />
           <xsl:for-each select="Result/SplitTime">
              <xsl:value-of select="ControlCode" /><xsl:value-of select="$delim" />
              <xsl:choose>
                <xsl:when test="Time">
                    <xsl:call-template name="secToMinSec"><xsl:with-param name="durationSeconds" select="Time" /></xsl:call-template><xsl:value-of select="$delim" />        
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="$delim" />
                </xsl:otherwise>
              </xsl:choose>
          </xsl:for-each>
    
          <xsl:value-of select="$nl" />
        </xsl:if>
    </xsl:for-each>
  </xsl:template>

  <xsl:template name="secToMinSec">
    <xsl:param name="durationSeconds"/>
    <xsl:variable name="minutes" select="floor($durationSeconds div 60)" />
    <xsl:variable name="seconds" select="$durationSeconds mod 60" />
    <xsl:value-of select="$minutes" /><xsl:value-of select="format-number($seconds, ':00')" />
  </xsl:template>

  <xsl:template name="status">
    <xsl:param name="status"/>
    <xsl:choose>
      <xsl:when test="$status='OK'">
        <xsl:text>0</xsl:text>
      </xsl:when>
      <xsl:when test="$status='DidNotStart'">
        <xsl:text>1</xsl:text>
      </xsl:when>
      <xsl:when test="$status='DidNotFinish'">
        <xsl:text>2</xsl:text>
      </xsl:when>
      <xsl:when test="$status='MissingPunch'">
        <xsl:text>3</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>99</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
