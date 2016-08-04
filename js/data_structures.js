

// var horse_names = ["Buster", "Sugar", "Ed", "Apple"];
// var horse_colors = ["red", "blue", "green", "pink"];

// horse_names.push("Johnny");
// horse_colors.push("rainbow");

// var horses = {};

// for (var i = 0; i < horse_names.length; i++){
//   (horses[horse_names[i]] = horse_colors[i]); 
// }

// console.log(horses)
//--------------------------------------------------------

function Car(color, numberOfDoors, sunRoof) {
 console.log("Our new car", this); 
  this.color = color;
  this.numberOfDoors = numberOfDoors;
  this.sunRoof = sunRoof;
  this.honk = function() {console.log("Honk!");
                         };
}

var carOne = new Car("red", 2, true);
console.log(carOne);
carOne.honk();

var carTwo = new Car("blue", 4, false);
console.log(carTwo);

var carThree = new Car("purple", 2, true);
console.log(carThree);