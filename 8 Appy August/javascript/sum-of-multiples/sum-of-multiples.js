//
// This is only a SKELETON file for the 'Sum Of Multiples' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

let sum = (level, baseValues) => {
  const uniqueMultiples = new Set();

  for (const baseValue of baseValues) {
    let currentMultiple = baseValue;
    while (currentMultiple < level) {
      uniqueMultiples.add(currentMultiple);
      currentMultiple += baseValue;
    }
  }

  return uniqueMultiples.reduce((accumulator, currentValue) => accumulator + currentValue);
}

