// 6. Hämta och visa foton. (3p)
// Ladda ner foton med fetch från denna url: https://jsonplaceholder.typicode.com/photos
// Visa dom första 10 fotona på sidan.
// När man klickar på ett foto ska dess titel visas i en popup med `alert`

function fetchData() {
    fetch("https://jsonplaceholder.typicode.com/photos")
        .then(response => response.json())  
        .then(photos => {
            
            const container = document.createElement("div");
            container.className = "container";  
            document.body.appendChild(container);

            // Begränsa till de första 10 fotona
            photos.slice(0, 10).forEach(photo => {
                const photoDiv = document.createElement('div');       // Skapa ett nytt <div>-element för varje foto
                photoDiv.classList.add('photo-div');                 // Lägg till en klass för styling

                // Lägg till bild och titel
                const img = document.createElement('img');
                img.src = photo.thumbnailUrl;  
                img.alt = photo.title;  

                const title = document.createElement('h3');
                title.textContent = photo.title;  

                photoDiv.appendChild(img);
                photoDiv.appendChild(title);

                container.appendChild(photoDiv);
            });
        })
}

fetchData();


