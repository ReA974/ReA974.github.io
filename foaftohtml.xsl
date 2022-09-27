<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:foaf="http://xmlns.com/foaf/0.1/" >
  <xsl:output method="html" indent="yes" />
  <xsl:template match="rdf:RDF/foaf:Person">
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Name</th>
        <th>Gender</th>
        <th>givenname</th>
        <th>family_name</th>
        <th>nick</th>
        <th>mbox_sha1sum</th>
        <th>homepage</th>
      </tr>
      <tr>
        <td><xsl:value-of select="foaf:name"/></td>
        <td><xsl:value-of select="foaf:gender"/></td>
        <td><xsl:value-of select="foaf:givenname"/></td>
        <td><xsl:value-of select="foaf:family_name"/></td>
        <td><xsl:value-of select="foaf:nick"/></td>
        <td><xsl:value-of select="foaf:mbox_sha1sum"/></td>
        <td><xsl:value-of select="foaf:homepage/@rdf:resource"/></td>
      </tr>
    </table>
    <br />
    <xsl:text>&#013;</xsl:text>
  </xsl:template>
  <xsl:template match="rdf:RDF/foaf:knows">
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Name</th>
        <th>homepage</th>
      </tr>
      <tr>
        <td><xsl:value-of select="foaf:Person/foaf:name"/></td>
        <td><xsl:value-of select="foaf:Person/foaf:homepage/@rdf:resource"/></td>
      </tr>
    </table>
    <br />
    <xsl:text>&#013;</xsl:text>
  </xsl:template>
</xsl:stylesheet>