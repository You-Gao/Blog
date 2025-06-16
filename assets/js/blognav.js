        function generateBlogNav() {
            if (!document.querySelector('h1')) {
                return;
            }
            var blogNav = document.createElement('div');
            blogNav.className = 'blog-nav';
            blogNav.style = 'width: 100%; max-width: 200px; border: 1px solid #ccc; border-top: 0; border-bottom: 0; border-right: 0;'

            var mainContent = document.querySelector('.markdown-body');
            var headers = mainContent.querySelectorAll('h1, h2, h3, h4, h5, h6');
            var List = document.createElement('div');

            for (var i = 0; i < headers.length; i++) {
                var header = headers[i];
                var Item = document.createElement('a');
                var text;

                if (header.tagName === 'H2' && header.innerHTML === '<br>') {
                    // footnotes
                    // add an id to the header
                    header.id = 'footnotes';
                    Item.href = '#' + header.id;
                    Item.innerHTML = "╹━ Footnotes";
                    Item.classList.add('nav-h2');
                }

                if (header.innerText.length > 25) {
                    text = header.innerText.substring(0, 25) + '...';
                }
                else {
                    text = header.innerText;
                }

                if (header.tagName === 'H1') {
                    Item.href = '#' + header.id;
                    Item.innerHTML = text;
                    Item.classList.add('nav-h1');

                    // mock time it takes to read
                    var Time = document.createElement('span');
                    var time = calculateTimeToRead();
                    Time.innerHTML = time + ' min read';
                    Time.classList.add('time');
                    List.appendChild(Time);
                }
                else if ((header.tagName === 'H2') && (header.innerHTML !== '<br>')) {
                    var Item = document.createElement('a');
                    Item.href = '#' + header.id;
                    Item.innerHTML = "╹━ "+ text;
                    Item.classList.add('nav-h2');
                }
                else if (header.tagName === 'H3') {
                    var Item = document.createElement('a');
                    Item.href = '#' + header.id;
                    Item.innerHTML = "╵╸╸ " + text;
                    Item.classList.add('nav-h3');
                }

                Item.addEventListener('mouseover', function () {
                    if (this.style.textDecorationThickness === '2px') {
                        return;
                    }
                    this.style.textDecoration = 'underline';
                });
                Item.addEventListener('mouseout', function () {
                    if (this.style.textDecorationThickness === '2px') {
                        return;
                    }
                    this.style.textDecoration = 'none';
                });
                List.appendChild(Item);
            }

blogNav.appendChild(List);

var x, y;
x = mainContent.getBoundingClientRect().left;
y = document.querySelector('h1').getBoundingClientRect().top + window.scrollY;
blogNav.style.position = 'absolute';
blogNav.style.top = y + 'px';
blogNav.style.right = x - 200 + 'px';

// add blognav to the main content
mainContent.appendChild(blogNav);
        }
function calculateTimeToRead() {
    var mainContent = document.querySelector('.markdown-body');
    var text = mainContent.innerText;
    var words = text.split(/\s+/).length;
    var time = Math.ceil(words / 200);
    return time;
}
function matchScrolltoBlogNav() {
    if (!document.querySelector('h1')) {
        return;
    }
    var scrollPosition = window.scrollY || document.documentElement.scrollTop;
    var headers = document.querySelectorAll('.blog-nav a');
    headers = Array.from(headers).reverse();

    var maxScroll = document.documentElement.scrollHeight - window.innerHeight;

    if (scrollPosition >= maxScroll - 1) {
        headers[0].style.textDecoration = 'underline';
        headers[0].style.textDecorationThickness = '2px';
        headers[0].style.textDecorationOffset = '2px';
        for (var i = 1; i < headers.length; i++) {
            headers[i].style.textDecoration = 'none';
        }
        return;
    }

    for (var i = 0; i < headers.length; i++) {
        var header = headers[i];
        var headerPosition = document.querySelector('[id="' + header.getAttribute('href').substring(1) + '"]').getBoundingClientRect().top + window.scrollY;


        if (scrollPosition + 1 < headerPosition) {
            header.style.textDecoration = 'none';
            continue;
        }

        else if (scrollPosition + 1 > headerPosition) {
            header.style.textDecoration = 'underline';
            header.style.textDecorationThickness = '2px';
            header.style.textDecorationOffset = '2px';
            for (var j = i + 1; j < headers.length; j++) {
                headers[j].style.textDecoration = 'none';
            }
            return;
        } 
    }
}
window.addEventListener('DOMContentLoaded', function () {
    generateBlogNav();
});
window.addEventListener('scroll', function () {
    matchScrolltoBlogNav();
    var blogNav = document.querySelector('.blog-nav');
    if (blogNav) {
        var x, y;
        if (window.scrollY < 50) {
            y = document.querySelector('h1').getBoundingClientRect().top;
            blogNav.style.top = y + 'px';
        }
        else {
            y = window.scrollY + 50;
            blogNav.style.top = y + 'px';
        }
    }
});
window.addEventListener('resize', function () {
    var blogNav = document.querySelector('.blog-nav');
    // if screen < 1200px remove scroll event but not display none
    if (window.innerWidth < 1200) {
        window.removeEventListener('scroll', matchScrolltoBlogNav);
    }
    if (blogNav) {
        var x;
        x = document.querySelector('.markdown-body').getBoundingClientRect().left;
        blogNav.style.right = x - 200 + 'px';
    }
});


