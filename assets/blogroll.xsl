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
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
                <link href="/assets/css/combined.css" rel="stylesheet" type="text/css" />
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
            <body>
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
                        version: null 
                    </div>
                </div>
            </nav>
                <main>
                    <section class="container-md px-3 markdown-body">
                        <hr />
                        <section>
                            <blockquote class="my-5">
                            <p>I finally got around to setting up an RSS reader... here are some of the blogs I follow!
                            This file is in <b>OPML format</b>, so you can <a target="_blank" href="/blogroll.xml" download="blogroll.opml">
                            download</a> it into your own reader.
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
                                    <li class="active"><a href="/blogroll.xml">blogroll</a></li>
                                    <li ><a href="/feed.xml">rss</a></li>
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

 

        </html>
    </xsl:template>

    <xsl:template match="outline">
        <div>
            <h4>
                <a target="_blank" href="{@htmlUrl}"> 
                    <xsl:value-of select="@title" />
                </a>:
                <xsl:value-of select="@text" />
            </h4>
        </div>
    </xsl:template>
</xsl:stylesheet>
