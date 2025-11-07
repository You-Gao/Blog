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

        fetch(`https://api.dictionaryapi.dev/api/v2/entries/en/${word}`)
            .then(response => response.json())
            .then(data => {

                if (
                    data[0] &&
                        data[0].meanings &&
                        data[0].meanings[0] &&
                        data[0].meanings[0].definitions &&
                        data[0].meanings[0].definitions[0] &&
                        data[0].meanings[0].definitions[0].definition
                ) {
                    const definition = data[0].meanings[0].definitions[0].definition;
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

