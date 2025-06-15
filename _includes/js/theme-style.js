<script>
    (function() {
        var theme = localStorage.getItem('theme');
            var themeHref = theme === "normalize_invert"
                ? "{{ site.baseurl }}/assets/normalize_invert.css"
                : "";
        document.write('<link id="theme-style" rel="stylesheet" href="' + themeHref + '">');
    })();
</script>
