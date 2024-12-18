🚀                🚀🚀🚀🚀 CHECKLISTA 1 🚀🚀🚀🚀🚀           🚀
---------------------------------------------------------------

🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃 FLEX BOX 🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃🎃
Flexbox är endimensionellt, vilket innebär att det endast arbetar i en riktning åt gången

display: flex;                 För att använda flexbox måste du definiera en container
flex-direction: row;           Horisontell (standard) 
flex-direction: column;        Vertikal 

`Justera innehållet Längs huvudaxeln (horizontal eller vertikal beroende på flex-direction)`
justify-content: center;            Centrerar flex-items 
justify-content: space-between;     Sprider ut jämnt 
justify-content: space-around;      Lägger mellanrum runt items 

align-items: center;                Centrera tvärs huvudaxeln 
align-items: stretch;               Fyller utrymmet 

flex: 1;                            -- Tillåt element att växa och fylla tillgängligt utrymme 

<llllllllllllllllllllll> G R I D <lllllllllllllllllllllllllll>
Grid är ett tvådimensionellt layoutsystem, vilket innebär att det kan hantera både rader och kolumner samtidigt.
`grid-template-columns` definierar storleken på kolumner (horisontellt).
`grid-template-rows` definierar storleken på rader (vertikalt).

display: grid;

grid-template-columns            Övergripande egenskap som `styr hela rutnätets layout`, definierar struktur och storlek på kolumnerna. 
grid-column                      Används för att `styra placeringen och bredden på ett specifikt/enskilt element` inom ett grid-system.
.                                Med den här egenskapen anger du var ett element ska börja och sluta (horisontellt) inom rutnätet.
    
grid-template-rows:       Bestämmer du hur höga raderna ska vara. Används på grid-containern för att definiera radstruktur.
grid-row:                 Anger var ett individuellt element ska placeras i griden (vertikalt).

  ( E X E M P E L )
|--------------------------------------------------|
| .grid-container {                                |
|   display: grid;                                 |
|   grid-template-columns: 1fr 2fr 1fr;            |   Skapar tre kolumner: två lika stora och en dubbelt så stor som de andra                                                 |     
| }                                                |
|                                                  |
| .item1 {                                         |   Elementet (item) tar plats från kolumn 1 till 2      
|   grid-column: 1 / 2;                            |
| }                                                |
|                                                  |
| .item2 {                                         |
|   grid-column: 2 / 4;                            |   Elementet sträcker sig från kolumn 2 till 4
| }                                                |
|--------------------------------------------------|


🎃🎃🎃🎃🎃🎃 -- M E D I A   Q U E R Y S -- 🎃🎃🎃🎃🎃🎃
<=========================================================>


@media (max-width: 768px) {
  .container {
    display: block;
  }
}

@media (min-width: 769px) {
  body {
    display: flex;
    background-color: lightgreen;
  }

  h1 {
    font-size: 36px;
  }
}

🎃🎃🎃🎃🎃🎃 -- A N I M A T I O N E R -- 🎃🎃🎃🎃🎃🎃
<=========================================================>

`CSS Transitions:` Styr förändringar när en egenskap på ett element förändras som svar på en 
användarinteraktion (t.ex. vid :hover, :focus, etc.). 

`@keyframes:` En serie förändringar av ett eller flera element över en viss tidsperiod.
Detta kan vara en upprepande, kontinuerlig animation som inte kräver någon användarinteraktion för att börja. 

<lllllllllllllllllllllllllllllllllll><lllllllllllllllllllllllllllllllllll><lllllllllllllllllllllllllllllllllll>
<llllllllllllllllllllllll> ((LÄGG TILL EXEMPEL!!!!!!!!!!!!!!!!!!!!!!)) <lllllllllllllllllllllllllllllllllll>
<lllllllllllllllllllllllllllllllllll><lllllllllllllllllllllllllllllllllll><lllllllllllllllllllllllllllllllllll>

<lllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll>
<lllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll>
<lllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll>

🎃🎃🎃🎃🎃🎃 -- JAVA SCRIPT -- 🎃🎃🎃🎃🎃🎃
<=========================================================>

null = tomt värde
undefined = har inte fått ett värde än 
object = Lagra och organisera data. ex en person egenskaper
array = En lista av värden, ex. nummer, strängar eller andra objekt

const name = 'Bert Fjärt';                                                                -- kan inte ändras
let age = 99;                  let: Har block scope, tillgänlig i hela funktionen         -- kan ändras 
var city = 'westeros';         var: Har funktionell scope. Endast synlig där den deklareras. 


scope (räckvidd) - Styr var och hur variabler kan användas i koden.
Global scope om den deklareras utanför en funktion. "högsta nivån i JavaScript," & är tillgänglig i hela ditt program.
function scope, deklareras inuti en funktion & endast är tillgängliga inom den funktionen.
Block scope gäller för kodblock som är inneslutna i {}.

'EXEMPEL'
| function example() {
|   if (true) {
|     var x = 10;  // 'var' har funktion scope
|     let y = 20;  // 'let' har block scope
|   }
|   console.log(x); // 10, eftersom x är funktionell
|   console.log(y); // Error: y is not defined, eftersom y är block-scoped
| }
| example();

Lexical scope: En funktion kommer ihåg det scope där den skapades, 
vilket gör att den kan komma åt variabler från omgivande scope även om den anropas utanför.


🍎🍎🍎🍎🍎 --<xxxxxxxxxx> HOIST <xxxxxxxxx>-- 🍎🍎🍎🍎🍎🍎 
____________________________________________________________________
Hoisting är när JavaScript automatiskt flyttar variabeldeklarationer och funktionsdeklarationer till toppen av koden innan den körs. 

'var' - Värdet sätts först när koden körs. 
Detta betyder att du kan använda dem innan de deklareras,
men deras värde är "undefined" tills du når den rad där värdet sätts.

'let och const' - let eller const hoistas också, men de är inte tillgängliga
innan de når deklarationen (det kallas för "temporal dead zone"). 
Om du försöker använda dem innan de deklareras får du ett fel.

function är alltid hoistade, och fungerar trots att funktionen deklareras efter användning.
Funktioner som är deklarerade med const, let, var är inte hoistade på samma sätt. Tilldelning
behöver göras innan function. 


|--------------------------------------------------|
|   Ex. a skapar en temporal dead zone (TDZ)       |
|                                                  |
|   exempel:                                       |
|                                                  |
|   let a;                                         |
|   console.log(a);                                |   ReferenceError: Cannot access 'a' before initialization
|   a = 10;                                        |   Variabeln 'a' är hoistad, men får inte användas förrän den är tilldelad ett värde
|                                                  |
|   const b = 20;                                  |
|   console.log(b);                                |   Här fungerar det för att 'b' har deklarerats och tilldelats ett värde
|--------------------------------------------------|

____________________________________________________________________________________________________________________________
🍑 🍑 🍑 🍑 🍑 CRUD - Create, Read, Update, Delete. 🍑 🍑 🍑 🍑 🍑
____________________________________________________________________________________________________________________________


POST -  Skapa en ny användare (Create) data.
GET - Hämta information om en specifik användare. (Read) data.
PUT - Uppdatera användarens uppgifter (Update) data.
DELETE - Ta bort användaren (Delete) data.

let age = 30;        create
console.log(age);    read
age = 35;            update
age = null;          delete


'NESTLAD' LETA EFTER EX UPPGIFTEN VI GJORDE.
let nestedArray = [[1, 2], [3, 4], [5, 6]]; -- en array unnit i en array

read
console.log(nestedArray[0][1]); // Output: 2 (första arrayen, andra elementet) -- hämta och läsa från en nestlad array.
console.log(employee.address.city); // Output: Stockholm -- läsa från en nestlat obejekt

update
person.age = 31; // Uppdaterar 'age' till 31
numbers[1] = 10; // Uppdaterar andra elementet i arrayen till 10
nestedArray[1][0] = 9; // Uppdaterar första elementet i den andra nestlade arrayen 
till 9
employee.address.street = "456 Elm St"; // Uppdaterar gatan i adressen

delete
delete person.age; // Tar bort 'age' från objektet
numbers.splice(2, 1); // Tar bort det tredje elementet i arrayen (index 2)
nestedArray[0].splice(1, 1); // Tar bort andra elementet i den första nestlade arrayen
delete employee.address.city; // Tar bort 'city' från den nestlade adressen



--00--00--00--00--00--00--00--00---00--00--00--00--00--00--00--00---00--00--00--00--00--00--00--00-
--00--00--00--00--00--00--00--00---00--00--00--00--00--00--00--00---00--00--00--00--00--00--00--00-


🍌🍌🍌 LOGISKA OPERATORER 🍌🍌🍌
<================================>
) && = Alla villkor måste vara sanna.
) || = Minst ett av villkoren måste vara sant.
) ^  = En av sidorna måste bara true men båda får inte vara det. 

🍌🍌🍌 MODULUS 🍌🍌🍌
<================================>
% = returnerar det som blir kvar när ett tal delas med ett annat tal.
num % 2 === 0  'ett jämnt tal är ett tal som är delbart med 2'
num % 2 !== 0  'Ett ojämnt tal är ett tal som inte är delbart med 2 utan rest. '

ex. arr.filter(num => num % 2 === 0) 
'filtreras de jämna talen (de som har en rest på 0 när de delas med 2) de behålls i den nya arrayen.'

🍌🍌🍌 TYPKONVERTERING🍌🍌🍌
<============================>
Omvandlar ett värde från en datatyp till en anna. 
Implicit = Sker automatiskt Ex. console.log("5" - 2);   // 3  (strängen "5" konverteras till tal)
Explicit = Kräver att du själv anger konverteringen. 
) Med + prioriterar JavaScript strängkonkatenering (text sätts ihop).
) Med -, *, eller / konverteras värden till tal.

🍌🍌🍌 STRÄNGAR 🍌🍌🍌
<======================>
) Interpolerad sträng = innebär att du kan infoga variabler eller uttryck direkt i en sträng med hjälp av {}-syntax,
Ex. console.log(`My name is ${firstName} ${lastName} and I am ${age} years old.`);

) Strängfunktioner = Används för att manipulera, bearbeta och extrahera information från strängar. 
Ex. ) toUpperCases() || .lenght ||  substring() || indexOf() || split() || trim() || charAt()

let str = "Hello world";
console.log(str.length);  // 10 (antal tecken)
console.log(str.toUpperCase());  // "HELLO"
---------------------------------------------

)-- substring = Används för att extrahera en del utav en sträng baserat på 2 indexpositioner. 
let part = str.substring(0, 5);  // Extraherar från index 0 till 5 (utan att inkludera index 5)
console.log(part);  // "Hello" (tecknet på sista slutindexet inkluderas inte)
---------------------------------------------------------------------------------------------------

)-- indexOf = returnerar indexet för den första förekomsten av substringen.
let str = "Hello World, Hello";
console.log(str.indexOf("World"));      // 7 
console.log(str.lastIndexOf("Hello"));  // 13 (retunerar index för sista förekomsten av substringen)
-------------------------------------------------------------------------------------------------------------

)-- Split = delar strängen vid varje tecken, vilket ger en array där varje element är ett tecken från strängen.
I det här exemplet delar vi av strängen med varje mellanslag.  

let str = "hello";
let chars = str.split("");
console.log(chars);  // ["h", "e", "l", "l", "o"] 
------------------------------------------------------------------------

)-- trim = tar bort extra mellanslag.
let str = "   Hello, World!   "; 
let trimmedStr = str.trim();
console.log(trimmedStr);  // "Hello, World!"
------------------------------------------------------------------------

)-- charAt = Returnerar tecknet vid ett specifikt index i strängen.
let str = "Hello";
console.log(str.charAt(1));  // "e"

FOR LOOP
<==========================>
let str = "Hello";
for (let i = 0; i < str.length; i++) {
    console.log(str[i]);  // Skriver ut varje bokstav i strängen
}


BOOLEAN 
<==========================>
let temp = 25; 
let soligt = true;

if(temp > 20 && soligt) {
  console.log("Det är varmt och soligt! Perfekt för stranden."); 
} else if (temp > 20 && !soligt ){
  console.log("Det är kallt eller molnigt. Ta med en jacka.");
} else {
  console.log("Det är inte varmt nog för stranden.");
}

FOR EACH
<==========================>

const cars = [
  { type: "Volvo", speed: 50 },
  { type: "Ford", speed: 80 },
  { type: "Opel", speed: 60 }
];

cars.forEach(function(car) {
  console.log(`${car.type} har en hastighet på ${car.speed} km/h`);
});

____________________________________________________________________
CRUD ARRAYER 

11111111111 Create – Lägg till element i en array

const fruits = ["Apple", "Banana"];
fruits.push("Orange"); 
console.log(fruits); // ["Apple", "Banana", "Orange"]

fruits.unshift("Strawberry");
console.log(fruits); // ["Strawberry", "Apple", "Banana", "Orange"]


2222222222222 Read – Läs element från en array

console.log(fruits); // ["Strawberry", "Apple", "Banana", "Orange"]
console.log(fruits[1]); // "Apple" (index 1)  -- Läs ett specifikt element (via index):
fruits.forEach(fruit => console.log(fruit));



333333333333 Update – Uppdatera ett element i en array

fruits[1] = "Blueberry"; // Ändra "Apple" till "Blueberry"              'Uppdatera via index:'
console.log(fruits); // ["Strawberry", "Blueberry", "Banana", "Orange"]

const updatedFruits = fruits.map(fruit => fruit.toUpperCase());  'Uppdatera flera element (t.ex. med map)'
console.log(updatedFruits); // ["STRAWBERRY", "BLUEBERRY", "BANANA", "ORANGE"]



4444444444444 Delete – Ta bort element i en array

fruits.pop(); 'Ta bort från slutet (pop)'
console.log(fruits); // ["Strawberry", "Blueberry", "Banana"]

fruits.shift(); 'Ta bort från början (shift):'
console.log(fruits); // ["Blueberry", "Banana"]

fruits.splice(1, 1); // Ta bort 1 element från index 1   'Ta bort ett specifikt element (splice)'
console.log(fruits); // ["Blueberry"]

const remainingFruits = fruits.filter(fruit => fruit !== "Blueberry");   'Filtera bort element'
console.log(remainingFruits); // []

-- Sammanfattning --
Create: push, unshift
Read: Indexering, forEach, map
Update: Direkt via index eller metoder som map
Delete: pop, shift, splice, filter




) Spread operatorn (...) används för att "sprida" ut elementen i en array eller egenskaperna i ett objekt.
Det kan användas för att skapa kopior eller kombinera data.
____________________________________________________________________
const person = { name: "Anna", age: 25 };
const updatedPerson = { ...person, city: "Stockholm" };

console.log(updatedPerson); // { name: "Anna", age: 25, city: "Stockholm" }





) Destructuring: Gör det enklare att extrahera värden från objekt eller arrayer och tilldela dem till variabler. 
____________________________________________________________________
const numbers = [1, 2, 3];
const [first, second] = numbers;

console.log(first); // 1
console.log(second); // 2














