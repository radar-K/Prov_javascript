// 1. Trängselskatt (3p)
// Skriv en funktion totalTax som räknar ut den totala trängselskatten som ska betalas
// för en array av bil-objekt. Varje bil-objekt har ett registreringsnummer och ett
// klockslag då de passerade betalstationen.



// Här är kostnader för olika tider:
// 6:00 - 6:59: 30 kr
// 7:00 - 7:59: 45 kr
// 8:00 - 8:59: 30 kr
// 9:00 - 18:59: 20 kr
// Övriga tider är gratis.

function getHour(time) {
  return parseInt(time.split(":")[0]); // Extraherar timmen från klockslaget
}

function totalTax(cars) {
  let totalTax = 0; 
  cars.forEach((car) => {
    const hour = getHour(car.time); // Hämta timmen för bilens klockslag

    // Kolla vilken tid skatten ska betalas
    if (hour >= 6 && hour <= 6) {
      totalTax += 30;                          //  6:00 - 6:59
    } else if (hour >= 7 && hour <= 7) {
      totalTax += 45;                         //  7:00 - 7:59
    } else if (hour >= 8 && hour <= 8) {
      totalTax += 30;                        //  8:00 - 8:59
    } else if (hour >= 9 && hour <= 18) {
      totalTax += 20;                       //  9:00 - 18:59
    }
     // Övriga tid är gratis (0 skatt )
  });

  return totalTax; 
}

const taxedCars = [
  { registrationNumber: "TUU893", time: "6:30" },
  { registrationNumber: "YNK023", time: "7:10" },
  { registrationNumber: "BHN113", time: "8:30" },
  { registrationNumber: "LOP733", time: "18:02" },
  { registrationNumber: "MGY803", time: "23:30" },
];

console.log(totalTax(taxedCars)); 



