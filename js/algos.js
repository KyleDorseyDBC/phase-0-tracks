
// RELEASE 0
//function that takes an array of words
//  returns the longest word or phrase in the array
//  iterate through the array to find the greatest .length 
//  define variables to hold the longest string and length of the longest string
// loop through the array
  // if item length > longest length  redefine longest string and longest length variables
// print longest string var when done

// array = ["long phrase","longest phrase","longer phrase"]
// secondarray = ["Jim", "Jimbo", "Jimbob"]

// function LongestWord(words){
//   var longest_string = "";
//   var lengthofString = 0;
//   for (i = 0; i < words.length; i++) {
//     if (words[i].length > lengthofString){
//     longest_string = words[i];
//     lengthofString = words[i].length;
//     }
//   }
// console.log("The longest string is " + longest_string);
// }


// LongestWord(array)
// LongestWord(secondarray)

//Release 1

// Function that takes two objects as arguments and checks to see if they have at least one key value pair
// Define function
// if condition check to if they are the same using == and || return true
// else return false
var person1 = {name: "Jim", age: 3}
var person2 = {name: "Jim", age: 33}
var person3 = {name: "Franky", age: 34}

function SameKeyValue(pair1, pair2){
  if (pair1.name == pair2.name || pair1.age == pair2.age){
    return true
  }
  else{
    return false
  }
}

console.log(SameKeyValue(person1, person2))
console.log(SameKeyValue(person3, person2))
console.log(SameKeyValue(person1, person3))