<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <xsl:template match="/opml">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title>
                    <xsl:value-of select="head/title" />
                </title>
                <meta name="dateCreated" content="{head/dateCreated}" />
                <meta name="dateModified" content="{head/dateModified}" />
                <meta name="ownerName" content="{head/ownerName}" />
                <meta name="ownerId" content="{head/ownerId}" />
                <meta name="docs" content="{head/docs}" />
                <meta name="description" content="{head/description}" />
                <meta name="generator" content="{head/generator}" />
                <meta name="image" content="{head/image}" />
                <meta name="urlPublic" content="{head/urlPublic}" />
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
                    const themeStyle = document.querySelector('link[href*="normalize"]'); 
                    if (themeStyle) {
                    themeStyle.href = '/assets/' + themeName + '.css'; 
                    }

                    const toggleIcon = document.getElementById('toggle-icon'); 
                    if (toggleIcon) {
                    toggleIcon.src = '/assets/' + themeName + '.png'; 
                    }
                    };

                    const handleClick = () => {
                    const themeStyle = document.querySelector('link[href*="normalize"]');
                    const currentTheme = themeStyle.href.includes('normalize_invert') ? 'normalize'
        : 'normalize_invert';
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
            <body>
                <nav id="navbar"
                    class="navbar navbar-expand-lg navbar-light container-md px-1 py-0 mb-0 mt-4">
                    <div
                        class="container-fluid align-text-bottom justify-content-start align-items-end mb-0">
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
                <main>
                    <section class="container-md px-3 my-2 markdown-body">
                        <hr />
                        <section>
                            <blockquote class="my-5">
                            <p>I finally got around to setting up an RSS reader... here are some of the blogs I follow!
                            This file is in <b>OPML format</b>, so you can import it into your own reader.
                            </p>
                            </blockquote>

                            <h1>
                                my blogroll
                            </h1>
                            <xsl:apply-templates select="body/outline/outline" />
                        </section>
                    </section>
                </main>
            </body>
        </html>
    </xsl:template>

    <xsl:template match="outline">
        <div>
            <h3>
                <a target="_blank" href="{@htmlUrl}"> 
                    <xsl:value-of select="@title" />
                </a>
                [<a target="_blank" href="{@xmlUrl}"> 
                feed
                </a>]:
                <xsl:value-of select="@text" />
            </h3>
        </div>
    </xsl:template>
</xsl:stylesheet>