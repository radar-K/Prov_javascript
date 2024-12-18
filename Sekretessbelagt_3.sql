🚀                🚀🚀🚀🚀 CHECKLISTA 3 🚀🚀🚀🚀🚀           🚀
---------------------------------------------------------------

 🍌🍌🍌 DOM manipuleation 🍌🍌🍌
<================================>
DOM (Document Object Model) är en programmeringsgränssnitt (API) som används för att interagera med 
HTML- eller XML-dokument. `Den representerar dokumentets struktur som ett träd av noder, där varje nod
motsvarar ett element, ett attribut eller en text.`
-  HTML-tag, = såsom <div>, <p>, eller <a>, är en nod som kan manipuleras via JavaScript.




| **Kommando/Metod**                             | **Förklaring**                                                                                       
+------------------------------------------------+-------------------------------------------------------------------------------------+
| `document.getElementById(id)`                  | Hämtar ett element med ett specifikt ID.                                                            
+-------------------------------+------------------------------------------------------------------------------------------------------+
| `document.querySelector(selector)`             | Hämtar det första elementet som matchar en CSS-selektor.  
| 
| let element = document.querySelector('.myClass');
| console.log(element);  // Skriver ut första elementet med klassen 'myClass'


+------------------------------------------------+------------------------------------------------------------------------------------------------------+
| `element.textContent`                          | Hämtar eller tilldelar ett nytt textinnehåll i element.  
| 
| <p id="myParagraph">Hej, världen!</p>
| <button id="changeTextButton">Ändra text</button>
| 
| let button = document.getElementById('changeTextButton'); // hämtas för att lägga till en händelselyssnare
| let paragraph = document.getElementById('myParagraph'); // En referens till vart texten ska uppdateras
| 
| button.addEventListener('click', function() {
|     paragraph.textContent = "Ny text här!";  // Uppdaterar textinnehållet i p-elementet
|   });
+------------------------------------------------+------------------------------------------------------------------------------------------------------+
| `element.addEventListener(event, callback)`    | Lägg till en händelselyssnare för att reagera på användarinteraktioner som klick och tangenttryckningar. 
|
| event: Namnet på händelsen som du vill lyssna på, t.ex. 'click', 'keydown', 'mousemove'
| ) måste ta en funktion som argument, eftersom det är den funktionen som ska köras när händelsen inträffar
|
| <div id="hoverBox"></div>
| let box = document.getElementById('hoverBox');           // Hämta div-elementet
| box.addEventListener('mouseenter', function() {         // Lägg till en händelselyssnare för musöver (mouseenter)
|   box.style.backgroundColor = "orange";                // Ändra bakgrundsfärg när musen går över
|  });
|
|
+------------------------------------------------+------------------------------------------------------------------------------------------------------+
| `element.setAttribute(attributeName, value)`   | lägger till eller uppdateraett attribut på ett element.  
|
|<button id="myButton">Klicka här!</button>
| var button = document.getElementById("myButton"); -- Först hämtar vi elementet för att kunna ändra på den.
| * button.setAttribute("title", "Tryck här för att starta!");    -- lägger till
| * button.setAttribute("onclick", "alert('Du tryckte på knappen!')");
| * button.setAttribute("class", "min-knapp");   
|
| 🌶️🌶️🌶️ <=========EX==========> 🌶️🌶️🌶️🌶️
| var link = document.createElement("a");                 -- Skapa ett nytt <a>-element
| link.setAttribute("href", "https://www.example.com");   -- Lägg till en URL
| link.textContent = "Klicka här för att besöka sidan!";  -- Lägg till länktext
| document.body.appendChild(link);                        -- Lägg till länken i dokumentet
| <a href="https://www.example.com">Klicka här för att besöka sidan!</a>  -- Skapar följande HTML

+--------------------------------------------------+------------------------------------------------------------------------------------------------------+
| `element.getAttribute(attributeName)`            | Använd getAttribute när du BARA behöver läsa och inte ändra attributvärden.                                               
| 
| var img = document.getElementById("profilbild");
| var bildkälla = img.getAttribute("src"); -- Hämta värdet av "src" och visa det som text
| console.log("Bildkälla är:", bildkälla); -- Output: "bild1.jpg"
| 
| if (button.getAttribute("disabled") === "true") {
    console.log("Knappen är inaktiverad.");
}
| 
+---------------------------------------------------+------------------------------------------------------------------------------------------------------+
| `document.createElement(tagName)`                 | Skapar ett nytt HTML-element. 
| tagName: En sträng som representerar namnet på det HTML-element du vill skapa, exempelvis "div", "p", "button"
|  Returnerar: Ett nytt, tomt element av den typ du angivit.
|
|  let newParagraph = document.createElement("p");           -- Skapa elementet
|  newParagraph.textContent = "Detta är ett nytt stycke!";   -- Lägg till innehåll
|  document.body.appendChild(newParagraph);                  -- Lägg till elementet i DOM
|
+-------------------------------+------------------------------------------------------------------------------------------------------+                                                                 

    Parent / Child
<======================> 🌶️🌶️🌶️🌶️
Ett föräldraelement är en nod som innehåller andra noder. 
Ett barn-element är en nod som ligger inom ett föräldraelement. Dessa begrepp används för att beskriva och navigera i den hierar

<div id="parent">
  <p>Jag är ett barn-element</p>
  <ul>
    <li>Jag är också ett barn-element</li>
  </ul>
</div>
<======================> 🌶️🌶️🌶️🌶️

+------------------------------------------------+------------------------------------------------------------------------------------------------------+
| `element.appendChild(child)`                   | Lägger till ett barn till ett element.            
| 
| <div id="container"> <h1>Hej!</h1> </div>
|
| var newElement = document.createElement("p");                   -- Skapa ett nytt element
| newElement.textContent = "Jag är ett nytt stycke!";
| document.getElementById("container").appendChild(newElement);   -- Lägg till det nya elementet till containern
| 
| container.removeChild(newElement);      
|    
|                                          
+-------------------------------------------------+------------------------------------------------------------------------------------------------------+
| `element.removeChild(child)`                    | Tar bort ett barn från ett element.       
| 
| <div id="container"> <h1>Hej!</h1>
|  <p id="textChild">Detta stycke ska tas bort.</p> </div>
|
|   var elementToRemove = document.getElementById("textChild");     // Hämta elementet som ska tas bort
|   var container = document.getElementById("container");         // Hämta förälderelementet (container)
|   container.removeChild(elementToRemove);                      // Ta bort elementet från föräldern
| 
+-------------------------------------------------+------------------------------------------------------------------------------------------------------+
| `element.remove()`                              |  Tar bort elementet utan att behöva referera till dess förälder.
|    <div id="container">
|         <h1>Hej!</h1>
|         <p id="removeMe">Detta stycke ska tas bort.</p>
|         
|          document.getElementById("removeMe").remove();
+-------------------------------------------------+------------------------------------------------------------------------------------------------------+
| `.innerHTML`                                    |  Ändra HTML-innehåll
| 
| <div id="container"> <p>Hej världen!</p></div>
| <button onclick="ändraInnehåll()">Ändra text</button>  -- När knappen klickas, körs funktionen ändraInnehåll.
|
| function ändraInnehåll() {
    var container = document.getElementById("container");
    container.innerHTML = "<p>Texten är nu ändrad!</p>";
}
| 
| 
| 
+-------------------------------------------------+------------------------------------------------------------------------------------------------------+



| **Kommando/Metod**         | **Förklaring**                                                                                            |
|----------------------------|-----------------------------------------------------------------------------------------------------------|
| `setTimeout()`             | Utför en funktion efter ett visst antal millisekunder (asynkron funktion).                               |
| `setInterval()`            | Utför en funktion upprepade gånger med ett intervall (asynkron funktion).                                |
--------------------------------------------------------------------------------------------------------
| `JSON.parse()`             | Konverterar en JSON-sträng till ett JavaScript-objekt.                                                   |
| `JSON.stringify()`         | Omvandlar ett JavaScript-objekt till en JSON-sträng.                                                     |



| `async/await`              | Hanterar asynkrona funktioner på ett enklare sätt genom att vänta på att ett Promise ska lösas.           |
| `map()`                    | Skapar en ny array med resultatet från att köra en funktion på varje element i den ursprungliga arrayen.  |
| `filter()`                 | Skapar en ny array med alla element som uppfyller ett specifikt villkor från den ursprungliga arrayen.    |
| `reduce()`                 | Använder en funktion för att reducera alla element i en array till ett enda värde (t.ex. summering).      |
| `this`                     | Refererar till det aktuella objektet, som kan förändras beroende på var det används.                      |
| `bind()`                   | Skapar en ny funktion som, när den anropas, har `this` bundet till ett specifikt värde.                   |
| `call()`                   | Anropar en funktion med ett specifikt `this`-värde och argument, används för att anropa en metod på ett objekt. 
| `apply()`                  | Liknar `call()`, men tar emot argument som en array (eller array-liknande objekt).                        |
| `localStorage`             | Ett API för att lagra data lokalt i webbläsaren på användarens maskin (webbläsartillstånd).               |
| `sessionStorage`           | Lagrar data på användarens maskin som är tillgänglig under en sessions livstid (raderas när fönstret stängs). 

____________________________________________________________________________________________________________________________
 🍑 🍑 🍑 🍑   C R U D    D O M   🍑 🍑 🍑 🍑
____________________________________________________________________________________________________________________________
1. Create (Skapa) Ex. -- document.createElement() och appendChild()

-- Skapa ett nytt element --
let newElement = document.createElement('p');
newElement.textContent = 'Detta är ett nytt stycke!';

-- Lägg till det på sidan --
document.body.appendChild(newElement);




____________________________________________________________________________________________________________________________
2. Read (Läsa) -- textContent eller innerHTML.

-- Läs innehållet från ett element med id 'myElement' --
let element = document.getElementById('myElement');
console.log(element.textContent);  -- Läser textinnehållet







____________________________________________________________________________________________________________________________
3. Update (Uppdatera) -- textContent eller setAttribute()

--  Uppdatera textinnehållet
let elementToUpdate = document.getElementById('myElement');
elementToUpdate.textContent = 'Uppdaterad text!';

elementToUpdate.setAttribute('class', 'ny-klass');  -- Uppdatera attribut





____________________________________________________________________________________________________________________________
4. Delete (Ta bort)

-- Ta bort ett element med id 'myElement'
let elementToDelete = document.getElementById('myElement');
elementToDelete.remove();




</head>
<body>
  <h1>CRUD Formulär</h1>

  <div class="form-container">
    <form id="crudForm">
      <label for="name">Namn:</label>
      <input type="text" id="name" required>
      <label for="age">Ålder:</label>
      <input type="number" id="age" required>
      <button type="submit">Lägg till</button>
    </form>
  </div>

  <table id="dataTable">
    <thead>
      <tr>
        <th>Namn</th>
        <th>Ålder</th>
        <th>Åtgärder</th>
      </tr>
    </thead>
    <tbody>
      <!-- Poster visas här -->
    </tbody>
  </table>

  <script>
    // Hämtar referenser till viktiga element
    const form = document.getElementById('crudForm');
    const nameInput = document.getElementById('name');
    const ageInput = document.getElementById('age');
    const tableBody = document.querySelector('#dataTable tbody');

-- Lägg till händelselyssnare för formuläret
form.addEventListener('submit', function(event) {
  event.preventDefault();                               // Förhindra att sidan laddas om
  createRow(nameInput.value, ageInput.value);          // Skapa en rad med data från formuläret
  form.reset();                                       // Töm formuläret efter att data har skickats
});

--  Funktion för att skapa en ny rad
function createRow(name, age) {
  const row = document.createElement('tr');
  row.innerHTML = `
    <td>${name}</td>
    <td>${age}</td>
    <td>
      <button onclick="editRow(this)">Redigera</button>
      <button onclick="deleteRow(this)">Ta bort</button>
    </td>
  `;
  tableBody.appendChild(row);
}

-- Funktion för att redigera en rad
function editRow(button) {
  const row = button.parentElement.parentElement; // Hämta raden
  const nameCell = row.children[0]; // Första cellen (namn)
  const ageCell = row.children[1]; // Andra cellen (ålder)

  // Fyll formuläret med värden från raden
  nameInput.value = nameCell.textContent;
  ageInput.value = ageCell.textContent;

  // Ta bort raden när vi börjar redigera
  row.remove();
}

-- Funktion för att ta bort en rad
function deleteRow(button) {
  const row = button.parentElement.parentElement; // Hämta raden
  row.remove(); // Ta bort raden från tabellen
}

  </script>
</body>
</html>









JSON - javascript object notation. format för att lagra och överföra data
`JSON-strängar är ofta den form som data skickas eller tas emot i via nätverk, exempelvis
från ett API, och du behöver konvertera dessa strängar till ett användbart JavaScript-objekt
för att kunna arbeta med dem i din kod.`

🫸 ASYNKRON 🫷

| Steg                          | Förklaring                                                                 
|-------------------------------|-----------------------------------------------------------------------------------------------|
| **1. Asynkron funktion?**     | En funktion som tillåter andra uppgifter att köras medan den väntar på långsamma operationer. |
| **2. `async`                  | Markerar en funktion, vilket gör att den alltid returnerar ett löfte (Promise).               |
| **3. `await`                  | Används för att vänta på att ett löfte ska bli klart innan nästa kod körs.                    |
| Promise                       | Resultatet av en asynkron operation, antingen uppfylld eller misslyckad.                      |


async = markera funktion som asynkron
fetch = Retunerar ett löfte
await = Väntar på att nätverksförfrågan ska slutföras & returnera ett svar

-- En asynkron funktion som hämtar data från en API
async function fetchData() {       ("Hämtar data...");
    console.log("Hämtar data...");  

    let response = await fetch("https://api.example.com/data"); -- Vänta på att nätverksförfrågan ska slutföras

    let data = await response.json(); -- När förfrågan är klar, bearbeta svaret
    console.log("Data mottagen:", data);
    -- await response.json(): När svaret från servern har mottagits (detta kan ta tid), 
    -- konverteras det till JSON-format och vi väntar på att det ska bli klart innan vi fortsätter.
}

// Kör den asynkrona funktionen
fetchData();

🥶🥶🥶🥶🥶🥶 async/await VS .then() och .catch() 🥶🥶🥶🥶🥶🥶
-----------------------------------------------------------
Används för att hantera asynkrona operationer i JavaScript,
men `de gör det på olika sätt och med olika syntax.` De hanterar
samma typ av operationer (som Promises), men async/await är en 
mer modern och läsbar syntax.

* Istället för att använda await kan man använda .then()
* Och .catch() för att fånga eventuella fel (som en misslyckad nätverksförfrågan).

function fetchData() {
    fetch("https://api.example.com/data") // Hämtar data
        .then(response => response.json())  // När svaret kommer tillbaka, konvertera det till JSON
        .then(data => {
            console.log("Data mottagen:", data);  // Hantera resultatet när allt är klart
        })
        .catch(error => {
            console.error("Fel inträffade:", error);  // Hantera eventuella fel
        });
}

-- S A M M A N F A T T N I N G --
* `async/await` passar bäst för sekventiell kod som ska vara lättläst och enkel att hantera fel i.
Används när kod behöver köras steg för steg, där varje operation väntar på att den förra ska bli
klar. Det gör koden lättare att läsa och förstå, särskilt vid komplexa flöden.

* .then() Passar bättre när flera asynkrona operationer kan köras samtidigt (parallellt) 
och du vill hantera alla resultat på en gång, till exempel med Promise.all().
eller när du jobbar med äldre kod.
____________________________________________________________________

( NPM TEST )
<==========================>

1. skapa en funktion
2. module.exports = canGetDrivingLicense; ` Gör funktionen tillgänglig för andra filer`
3. const hämtarFunktion(canGetDrivingLicense) = require("./question1");

4. Skapa en testfil du vill köra 
____________________________________________________________________ 

-- expect(faktisktVärde).matchar(förväntatVärde);
expect(5 + 5).toBe(10); // OK

-- .not.toBe används för att kontrollera att något inte är sant.
expect(5).not.toBe(10); // OK



test("should return true if age is 18 or greater", () => {
  expect(canGetDrivingLicense(18)).toBe(true); // Kontrollera om resultatet är sant
});

test(): Definierar ett enskilt test.
expect(): Används för att kontrollera om ett värde matchar det förväntade resultatet.
.toBe(): En matchare som kontrollerar att två värden är lika.
____________________________________________________________________

5. Lägg till testskript för att köra via mpm
"scripts": {
  "test": "jest"
}

kommando - npm test // npm test question1.test.js
