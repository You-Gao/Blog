document.addEventListener("DOMContentLoaded", () => {
    function AddDictionaryBox(event) {
        const word = event.target.textContent.trim().replace(/\./, "");
        const box = document.createElement("div");
        box.className = "dictionary-box";
        box.textContent = "Loading definition...";
        document.body.appendChild(box);

        // Position the box at the mouse location, offset 50px above
        box.style.left = `${event.pageX}px`;
        box.style.top = `${event.pageY + 10}px`;
        box.style.border = "1px solid #ccc";
        fetch(`https://en.wikipedia.org/api/rest_v1/page/summary/${word}`)
            .then(response => response.json())
            .then(data => {
                if (
                    data.extract
                ) {
                    
                    const definition = (data.type === "disambiguation")
                        ? "Too many definitions for this word, I hope I used it correctly."
                        : (data.extract.length >= 200
                            ? data.extract.substring(0, 200) + "..."
                            : data.extract);
                    box.textContent = definition;
                } else {
                    box.textContent = "Definition not found.";
                }
            })
            .catch(() => {
                box.textContent = "Error fetching definition.";
            });

        event.target.addEventListener("mouseleave", () => {
            box.remove();
        });
    }

    const words = document.querySelectorAll("em");
    words.forEach(word => {
        word.addEventListener("mouseenter", AddDictionaryBox);
    });
});

