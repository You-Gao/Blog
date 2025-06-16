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
                <link href="/assets/css/combined.min.css" rel="stylesheet"
                    type="text/css" />
                <link rel="icon" href="/assets/logo.webp" type="image/icon type"></link>
                <link id="blank" type="text/css"></link>
                <script type="text/javascript">
                    var theme = localStorage.getItem('theme');
                    var themeHref = theme === "normalize_invert"
                        ? "/assets/css/normalize_invert.css"
                        : "/assets/css/normalize";

                    // Create a new link element
                    var link = document.getElementById('blank');
                    link.id = 'theme-style';
                    link.rel = 'stylesheet';
                    link.href = themeHref;

                    document.addEventListener('DOMContentLoaded', function() {
                        const setTheme = (themeName) => {
                            const themeStyle = document.getElementById('theme-style');
                            const toggleIcon = document.getElementById('toggle-icon');
                            if (themeName === 'normalize'){
                                localStorage.setItem('theme', themeName);
                                themeStyle.href = '';
                                toggleIcon.src = '/assets/' + themeName + '.webp';
                                return;
                            }
                            themeStyle.href = '/assets/css/' + themeName + '.css';
                            toggleIcon.src = '/assets/' + themeName + '.webp';
                            localStorage.setItem('theme', themeName);
                        };                           const handleClick = () => {
                            const currentTheme = localStorage.getItem('theme') || 'normalize';
                            if (currentTheme === 'normalize') {
                                setTheme('normalize_invert');
                            } else {
                                setTheme('normalize');
                            }
                        };

                        const currentTheme = localStorage.getItem('theme') || 'normalize';
                        const srcPath = '/assets/' + currentTheme + '.webp';

                        const button = document.createElement('div');
                        button.id = 'night-mode-toggle';
                        button.onclick = handleClick;

                        const img = document.createElement('img');
                        img.id = 'toggle-icon';
                        img.src = srcPath;
                        img.alt = 'Night Mode';

                        button.appendChild(img);
                        document.getElementById('react-icon').appendChild(button);                    });
                    </script>

            </head>

            <nav id="navbar" class="navbar navbar-expand-lg navbar-light container-md px-1 py-0 mb-0 mt-2">
                <div class="container-fluid align-text-bottom justify-content-start align-items-end mb-0"
                    style="margin-top:10px;">
                    <a class="navbar-brand h1 mb-0" href="/">U高,</a>

                    <!-- fills in the space -->
                    <div class="col"> 
                        <ul class="d-flex align-text-bottom flex-row" style="list-style: none;justify-content: flex-start; gap: 10px;">
                            <li class="nav-item">
                                <a class="nav-link h2 my-1" href="/fun">fun</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link h2 my-1" href="/books">books</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link h2 my-1" href="/life">me</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link h2 my-1" href="/work">work</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link h2 my-1" href="/photos">imgs</a>
                            </li>
                        </ul>
                    </div>
                    <div id="version" class="col-6" style="text-align: end;">
                        version: 3.1.2
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
                <footer class="site-footer h-card container-md px-3 my-6">  
                    <data class="u-url" href="/"></data>

                    <hr/>

                    <div class="wrapper">
                        <div class="row footer-col-wrapper ">
                            <div class="col-4 footer-col">
                                <ul style="font-size: 16px; list-style-type: none;">
                                    <li><a href="/now">now</a></li>
                                    <li><a href="/about">about</a></li>
                                </ul>
                            </div>
                            <div class="col-4 footer-col">
                                <ul style="font-size: 16px; list-style-type: none;">
                                    <li><a href="/blogroll.xml">blogroll</a></li>
                                    <li class="active"><a href="/feed.xml">rss</a></li>
                                </ul>
                            </div>

                            <div class="col-4 footer-col" style="font-size:16px;">
                                <p style="margin-bottom: 0 !important;">An archive of my thoughts.</p>
                            </div>
                        </div>
                    </div>
                </footer>

                <section id="toolbar" style="position: fixed; bottom: 20px; right: 20px; z-index: 1000;">
                    <div style="display: flex; align-items: center; justify-content: flex-end; padding-left: 10px;">
                        <div id="react-icon" class="item">
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
            <h4>
                <a target="_blank">
                    <xsl:attribute name="href">
                        <xsl:value-of select="atom:id" />
                    </xsl:attribute>
                    <xsl:value-of select="atom:title" />
                </a> - 
                <xsl:value-of select="atom:summary" disable-output-escaping="yes" />
 
            </h4>
        </div>
    </xsl:template>

</xsl:stylesheet>
