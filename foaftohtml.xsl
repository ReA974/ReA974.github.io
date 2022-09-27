<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
  xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:foaf="http://xmlns.com/foaf/0.1/" >
  <xsl:output method="html" indent="yes" />
  <xsl:template match="rdf:RDF/foaf:Person">
    <h2>
      name: <xsl:value-of select="foaf:name" />
    </h2>
    <h2>
        title: <xsl:value-of select="foaf:title" />
    </h2>
    <h2>
        given name: <xsl:value-of select="foaf:givenname" />
    </h2>
    <h2>
        family name: <xsl:value-of select="foaf:family_name" />
    </h2>
    <h2>
      gender: <xsl:value-of select="foaf:gender" />
    </h2>
    <h2>
      mbox_sha1sum: <xsl:value-of select="foaf:mbox_sha1sum" />
    </h2>
    <br />
    <xsl:text>&#013;</xsl:text>
  </xsl:template>
</xsl:stylesheet>