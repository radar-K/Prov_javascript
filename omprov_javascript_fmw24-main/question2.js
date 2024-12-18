// 2. Medelvärdet (3p)
// Skriv en funktion average som returnerar medelvärdet av en array med siffror.
// Medelvärdet räknas ut genom att först räkna ut summan av siffrorna och sen
// dela det med antalet siffror. medelvärdet = summan / antal.

function average(numbers) {
  let sum = 0;
  for (let i = 0; i < numbers.length; i++){
    sum += numbers[i];
  }
  return sum/ numbers.length;
}

console.log(average([1, 2, 3, 4, 5])); // Ska logga 3
console.log(average([1, 2, 3, 4])); // Ska logga 2.5


