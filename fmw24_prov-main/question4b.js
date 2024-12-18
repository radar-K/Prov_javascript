// 4b: Uppdatera egenskaper med Spread Operator (2p)
// Skriv en funktion updatePriceWithDiscount som tar emot två parametrar:
// ett produktobjekt och en rabattprocent. Funktionen ska returnera ett nytt objekt
// där priset är uppdaterat med den givna rabattprocenten


function updatePriceWithDiscount(product, discount) {
  const discountedPrice = ((100 - discount) / 100) * product.price;   // Beräkna prid med rabatten
  return { ...product, price: discountedPrice };                      // nytt objekt med uppdaterade priset
}

const product2 = {
  name: "Laptop",
  price: 15000,
  brand: "TechBrand",
};

console.log(updatePriceWithDiscount(product2, 10));             //{ name: "Laptop", price: 13500, brand: "TechBrand" }


module.exports = updatePriceWithDiscount;

