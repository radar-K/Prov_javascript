// 6. Todos (5p)

// Skapa en lista med TODOs som hämtas från: https://jsonplaceholder.typicode.com/todos
// Listan ska placeras i div-elementet med id todos på index.html

// Visa de första 10 TODOs i listan.
// För varje TODO ska följande visas:

// Titeln på TODO:n
// Om den är klar eller inte "completed" eller "not completed"
// Markera TODOs som är klara genom att visa dem med en grön textfärg.

fetch("https://jsonplaceholder.typicode.com/todos")
  .then(response => response.json())
  .then(data => {

    const todoDiv = document.getElementById("todos");
    const todos = data.slice(0,3);
    todos.forEach(todo => {
      const element = document.createElement("div");
      element.classList.add("item");
      element.textContent = ` ${todo.completed}  ${todo.title}`
      todoDiv.appendChild(element);

    });

  });






