// 3. Filtrera frukt (3p)
// Skriv en funktion removeApples som tar bort alla "apple" ur arrayen
// och returner den nya arrayen.

function removeApples(fruits) {
  return fruits.filter(fruit => fruit !== "apple")
}

console.log(removeApples(["apple", "banana", "orange", "apple"])); // ska logga ["banana", "orange"]
