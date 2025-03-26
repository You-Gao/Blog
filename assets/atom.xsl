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
        <link rel="icon" href="/assets/logo.webp" type="image/icon type"></link>
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
                toggleIcon.src = '/assets/' + themeName + '.webp'; // Update the image source dynamically
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
            img.src = '/assets/' + currentTheme + '.webp'; // Set the default image source
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
        <section class="site-footer h-card container-md px-3 my-6">  
          <data class="u-url" href="/"></data>

          <div class="markdown-body my-3">
            <hr />
          </div>

          <div class="wrapper">

            <div class="row footer-col-wrapper ">
            
              <div class="col-4 footer-col">

                <ul style="font-size: 16px; list-style-type: none;">
                  <li class="list-group-item">
                      You Gao
                  </li>
                  <li><a href="/">yougao.dev</a></li>
                  <li><a href="/blogroll.xml">blogroll</a></li>
                </ul>
              </div>

              <div class="col-4 footer-col">
              <ul style="font-size: 16px; list-style-type: none;">

              <li>
                <a rel="me" href="https://www.github.com/You-Gao" target="_blank" title="GitHub">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="Black" class="bi bi-github" viewBox="0 0 16 16">
                    <path d="M8 0C3.58 0 0 3.58 0 8c0 3.54 2.29 6.53 5.47 7.59.4.07.55-.17.55-.38 0-.19-.01-.82-.01-1.49-2.01.37-2.53-.49-2.69-.94-.09-.23-.48-.94-.82-1.13-.28-.15-.68-.52-.01-.53.63-.01 1.08.58 1.23.82.72 1.21 1.87.87 2.33.66.07-.52.28-.87.51-1.07-1.78-.2-3.64-.89-3.64-3.95 0-.87.31-1.59.82-2.15-.08-.2-.36-1.02.08-2.12 0 0 .67-.21 2.2.82.64-.18 1.32-.27 2-.27s1.36.09 2 .27c1.53-1.04 2.2-.82 2.2-.82.44 1.1.16 1.92.08 2.12.51.56.82 1.27.82 2.15 0 3.07-1.87 3.75-3.65 3.95.29.25.54.73.54 1.48 0 1.07-.01 1.93-.01 2.2 0 .21.15.46.55.38A8.01 8.01 0 0 0 16 8c0-4.42-3.58-8-8-8"/>
                  </svg>
                  <span class="social-name">Github</span>
                </a>
              </li>

              <li>
                <a rel="me" href="https://www.linkedin.com/in/gao-you" target="_blank" title="LinkedIn">
                  <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-linkedin" viewBox="0 0 16 16">
                    <path d="M0 1.146C0 .513.526 0 1.175 0h13.65C15.474 0 16 .513 16 1.146v13.708c0 .633-.526 1.146-1.175 1.146H1.175C.526 16 0 15.487 0 14.854zm4.943 12.248V6.169H2.542v7.225zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248S2.4 3.226 2.4 3.934c0 .694.521 1.248 1.327 1.248zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016l.016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225z"/>
                  </svg>
                  <span class="social-name">LinkedIn</span>
                </a>
              </li>

              <li>
                <a class="u-email" href="/feed.xml">
                    <svg
                      width="16"
                      height="16"
                      viewBox="0 0 31.749999 31.75"
                      version="1.1"
                      id="svg5"
                      inkscape:version="1.2.1 (9c6d41e410, 2022-07-14)"
                      sodipodi:docname="feed-icon-light-on-orange.svg"
                      xmlns:inkscape="http://www.inkscape.org/namespaces/inkscape"
                      xmlns:sodipodi="http://sodipodi.sourceforge.net/DTD/sodipodi-0.dtd"
                      xmlns="http://www.w3.org/2000/svg"
                      xmlns:svg="http://www.w3.org/2000/svg">
                      <sodipodi:namedview
                        id="namedview7"
                        pagecolor="#ffffff"
                        bordercolor="#666666"
                        borderopacity="1.0"
                        inkscape:showpageshadow="2"
                        inkscape:pageopacity="0.0"
                        inkscape:pagecheckerboard="0"
                        inkscape:deskcolor="#d1d1d1"
                        inkscape:document-units="mm"
                        showgrid="false"
                        inkscape:zoom="4.5611672"
                        inkscape:cx="-61.058932"
                        inkscape:cy="41.875246"
                        inkscape:window-width="3154"
                        inkscape:window-height="1812"
                        inkscape:window-x="2860"
                        inkscape:window-y="120"
                        inkscape:window-maximized="0"
                        inkscape:current-layer="g683" />
                      <defs
                        id="defs2" />
                      <g
                        inkscape:label="Layer 1"
                        inkscape:groupmode="layer"
                        id="layer1">
                        <g
                          id="g683"
                          transform="matrix(0.26458333,0,0,0.26458333,-8.8489774,-15.621043)">
                          <rect
                            style="fill:#ff7f2a;stroke-width:0.635;stroke-linecap:round;stroke-linejoin:round"
                            id="rect156"
                            width="100"
                            height="100"
                            x="43.444954"
                            y="69.040161"
                            rx="21.251678"
                            ry="21.251678" />
                          <ellipse
                            style="fill:#f2f2f2;stroke-width:1.20348;stroke-linecap:round;stroke-linejoin:round"
                            id="path210"
                            cx="69.901382"
                            cy="141.92136"
                            rx="10.357387"
                            ry="10.120168" />
                          <path
                            id="path529"
                            style="fill:#f2f2f2;stroke-width:0.635;stroke-linecap:round;stroke-linejoin:round"
                            d="m 59.835641,106.93038 v 10.80296 a 35.029171,35.029171 0 0 1 34.874357,34.87384 h 10.802442 a 45.676788,45.676788 0 0 0 -45.676799,-45.6768 z" />
                          <path
                            id="path630"
                            style="fill:#f2f2f2;stroke-width:0.87785;stroke-linecap:round;stroke-linejoin:round"
                            d="m -81.988277,59.856295 c 0,0 -10.066183,0.06645 -10.117729,0.122473 -5.28e-4,33.446743 -27.088614,60.574142 -60.535324,60.623172 v 9.90689 c 39.02047,1.7e-4 70.652935,-31.632064 70.653053,-70.652535 z"
                            transform="rotate(-90)"
                            sodipodi:nodetypes="ccccc" />
                        </g>
                      </g>
                    </svg>
                    <span>RSS</span>
                    </a>
                
              </li>

              </ul>
              </div>

              <div class="col-4 footer-col " style="font-size: 16px;">
                <p>An archive of my thoughts.</p>
              </div>
            </div>
          </div>
        </section>


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
