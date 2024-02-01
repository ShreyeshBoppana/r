
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Library Catalog</title>
      </head>
      <body>
        <h2>Library Catalog</h2>
        <table border="1">
          <tr>
            <th>Title</th>
            <th>Author</th>
            <th>ISBN</th>
            <th>Publisher</th>
            <th>Edition</th>
            <th>Price</th>
          </tr>
          <xsl:apply-templates select="lib/book"/>
        </table>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="book">
    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="author"/></td>
      <td><xsl:value-of select="isbn-no"/></td>
      <td><xsl:value-of select="publisher"/></td>
      <td><xsl:value-of select="edition"/></td>
      <td><xsl:value-of select="price"/></td>
    </tr>
  </xsl:template>

</xsl:stylesheet>
