<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foaf="http://xmlns.com/foaf/0.1/" xmlns:rdf="foaf.rdf">
<xsl:template match="/">
  <html>
  <body>
  <h2>Erwan Thibaut</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Name</th>
        <th>Title</th>
        <th>givenname</th>
        <th>family_name</th>
        <th>nick</th>
        <th>mbox_sha1sum</th>
        <th>homepage</th>
        <th>depiction</th>
      </tr>
      <tr>
        <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:name"/></td>
        <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:title"/></td>
        <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:givenname"/></td>
        <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:family_name"/></td>
        <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:nick"/></td>
        <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:mbox_sha1sum"/></td>
        <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:homepage/@rdf:resource"/></td>
        <td><xsl:value-of select="rdf:RDF/foaf:Person/foaf:depiction/@rdf:resource"/></td>
      </tr>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>