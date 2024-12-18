// 4a: Lägg till egenskaper med Spread Operator (2p)
// Skap en funktion addDiscount som tar emot två parametrar: ett produktobjekt och en rabattprocent.
// Funktionen ska returnera ett nytt objekt med discount som ny property.

const product = {
  name: "Laptop",
  price: 15000,
  brand: "TechBrand",
};

function addDiscount(product, discount) {
  return { ...product, discount }; // en ny array som lägger till discount 
}
module.exports = addDiscount;


// console.log(addDiscount(product, 10));
