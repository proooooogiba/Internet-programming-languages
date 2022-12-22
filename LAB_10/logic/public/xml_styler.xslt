<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">

    <html>
      <head>
        <title>ЛР №10 Клиент-вывод</title>
        <meta name="viewport" content="width=device-width,initial-scale=1"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"></link>
      </head>
      <body class="bg-light">
        <div class="col-md-9 mx-auto bg-white my-4 p-5 shadow">
          <table class="table table-bordered my-2">
            <tr>
              <th class="text-center" style="width: fit-content">Число 1</th>
              <th class="text-center" style="width: fit-content">Число 2</th>
            </tr>

            <xsl:for-each select="integers/integer">
              <xsl:if test="position() mod 2 = 1">
                <tr>
                  <td class="text-center" style="width: fit-content">
                    <xsl:value-of select="current()" />
                  </td>
                  <td class="text-center" style="width: fit-content">
                    <xsl:value-of select="following-sibling::integer[1]" />  
                  </td>            
                </tr>
              </xsl:if>
            </xsl:for-each>        

          </table>
          <a class="btn btn-primary" href="/lab10/input">Назад</a>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
      </body>
    </html>

  </xsl:template>
</xsl:stylesheet>