<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:atom="http://www.w3.org/2005/Atom"
  exclude-result-prefixes="atom"
>
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes" />
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
        <title>web feed | <xsl:value-of
            select="atom:feed/atom:title" /></title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
          crossorigin="anonymous" type="text/css" />
        <link href="/assets/normalize.css" rel="stylesheet" type="text/css" />
        <link rel="icon" href="/assets/logo.png" type="image/icon type"></link>
        <style type="text/css">
             .nav-item {
        vertical-align: bottom;
    }

    .nav-link {
        color: black;
        vertical-align: bottom;
    }

    .italic-link {
        font-style: italic;
    } 
        </style>
        <script type="text/javascript">
          document.addEventListener('DOMContentLoaded', function () {
            const setTheme = (themeName) => {
              const themeStyle = document.querySelector('link[href*="normalize"]'); // Select the link element for the theme
              if (themeStyle) {
                themeStyle.href = '/assets/' + themeName + '.css'; // Update the href dynamically
              }

              const toggleIcon = document.getElementById('toggle-icon'); // Select the image element
              if (toggleIcon) {
                toggleIcon.src = '/assets/' + themeName + '.png'; // Update the image source dynamically
              }
            };

            const handleClick = () => {
              const themeStyle = document.querySelector('link[href*="normalize"]');
              const currentTheme = themeStyle.href.includes('normalize_invert') ? 'normalize' : 'normalize_invert';
              setTheme(currentTheme);
            };

            const sizeStyle = {
              width: '40px',
              height: '40px',
            };

            const currentTheme = 'normalize'; // Default theme
            setTheme(currentTheme); // Set the default theme on page load

            const button = document.createElement('div');
            button.id = 'night-mode-toggle';
            button.onclick = handleClick;

            const img = document.createElement('img');
            img.id = 'toggle-icon';
            img.src = '/assets/' + currentTheme + '.png'; // Set the default image source
            img.alt = 'Night Mode';
            img.style.width = sizeStyle.width;
            img.style.height = sizeStyle.height;

            button.appendChild(img);
            document.getElementById('react-icon').appendChild(button);
          });
        </script>

      </head>

      <nav id="navbar" class="navbar navbar-expand-lg navbar-light container-md px-1 py-0 mb-0 mt-4">
        <div class="container-fluid align-text-bottom justify-content-start align-items-end mb-0">
          <a class="navbar-brand h1 mb-0" style="margin-top: 3px;" href="/">you
    gao</a>
          <a class="navbar-brand h2 mb-0" href="/about"
            style="margin-right:0; margin-left:0px; margin-top:10px;">(about you)</a>
          <div class="">
            <div id="react-icon" style="padding-left: 10px;">
            </div>
          </div>

          <div class="col">
            <ul class="d-flex align-text-bottom flex-row"
              style="list-style: none;justify-content: flex-end; gap: 10px;">
              <li class="nav-item">
                <a class="nav-link h2 my-1 italic-link align-text-bottom"
                  style="pointer-events:none;" aria-current="page" href="#">motifs:</a>
              </li>
              <li class="nav-item">
                <a class="nav-link h2 my-1" href="/fun">fun</a>
              </li>
              <li class="nav-item">
                <a class="nav-link h2 my-1" href="/books">text</a>
              </li>
              <li class="nav-item">
                <a class="nav-link h2 my-1" href="/life">me</a>
              </li>
              <li class="nav-item">
                <a class="nav-link h2 my-1" href="/work">work</a>
              </li>
              <li class="nav-item">
                <a class="nav-link h2 my-1" href="/photos">img</a>
              </li>

            </ul>
          </div>

        </div>
      </nav>

      
      <body>
        <main>
        <section class="container-md px-3 my-2 markdown-body">
          <hr />
          <section>
            <xsl:apply-templates select="atom:feed" />
          </section>
          <section>
            <h2>Recent Items</h2>
            <xsl:apply-templates select="atom:feed/atom:entry" />
          </section>
        </section>
        </main>
      </body>
    </html>
  </xsl:template>


  <xsl:template match="atom:feed">
          <blockquote class="my-5">
      <p>This is a <b>web feed</b>. You can use it to <b>subscribe</b> to this blog and get the
    latest content in your favorite reader. The direct link: <a target="_blank">
          <xsl:attribute name="href">
            <xsl:value-of select="atom:link[@rel='self']/@href" />
          </xsl:attribute>
          <xsl:value-of select="atom:link[@rel='self']/@href" />
        </a>
      </p>
    </blockquote>

    <h1>my
    atom feed</h1>
    <p>"remember to like and subscribe, also don't forget to hit that notification button!" <br/> - youtube circa 2010</p>

    <p>rejoice, i made an atom feed so you can keep up to date my with semi-coherent ramblings!</p>
  </xsl:template>

  <xsl:template match="atom:entry">
    <div class="entry">
      <h3>
        <a target="_blank">
          <xsl:attribute name="href">
            <xsl:value-of select="atom:id" />
          </xsl:attribute>
          <xsl:value-of select="atom:title" />
        </a>
      </h3>
      <p>
        <xsl:value-of select="atom:summary" disable-output-escaping="yes" />
      </p>
      <small> Published: <xsl:value-of select="atom:updated" />
      </small>
    </div>
  </xsl:template>

</xsl:stylesheet>
