// 5. Responsive Posts (3p)
// Ladda ner posts från denna url: https://jsonplaceholder.typicode.com/posts
// För varje post ska title och body placeras under varandra.
// I desktop-vy ska posts visas i 3 kolumner.
// I mobil-vy ska posts visas i en kolumn med 100% width.

function fetchData() {
    fetch("https://jsonplaceholder.typicode.com/posts")
        .then(response => response.json())  
        .then(posts => {
            
            const container = document.createElement("div");
            container.className = "container";                                  
            document.body.appendChild(container);

            posts.forEach(post => {
                const listItem = document.createElement('div');                        // Skapa ett nytt <div>-element för varje post
                listItem.classList.add('post-item');                                  // klass för styling
                listItem.innerHTML = `<h3>${post.title}</h3><p>${post.body}</p>`;    // Lägg till title och body i div:en
                
                container.appendChild(listItem);  
            });
        })
}

fetchData();


