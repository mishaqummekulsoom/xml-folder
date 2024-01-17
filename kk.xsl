<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Data fetch</title>
      </head>
      <body style="background-color: plum;">
        <h2 class="heading" style="font-size:65px; font-family: georgia; margin-top:20px; margin-left:10px;"><u>Varieties of Books Data</u></h2>
        <table style=" text-align:center;" border="1">
          <tr style=" font-size:20px;">
            <th> TITLE </th>
            <th> AUTHOR </th>
            <th> PUBLISHED </th>
            <th> PAGES </th>
            <th> PRICE </th>
          </tr>
          <xsl:for-each select="bookstore/book">
            <tr>
              <td style="color: green;" ><xsl:value-of select="title"></xsl:value-of></td>
              <td style="font-weight: bold;"><xsl:value-of select="author"></xsl:value-of></td>
              <td><xsl:value-of select="published"></xsl:value-of></td>
              <td><xsl:value-of select="pages"></xsl:value-of></td>
              <td style="padding: 20px; font-weight: bold;"><xsl:value-of select="price"></xsl:value-of></td>
            </tr>
          </xsl:for-each>
          
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
