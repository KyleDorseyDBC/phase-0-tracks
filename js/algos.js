//function that takes an array of words
//  returns the longest word or phrase in the array
//  iterate through the array to find the greatest .length 
//  define variables to hold the longest string and length of the longest string
// loop through the array
  // if item length > longest length  redefine longest string and longest length variables
// print longest string var when done

array = ["long phrase","longest phrase","longer phrase"]
secondarray = ["Jim", "Jimbo", "Jimbob"]
function LongestWord(words){
  var longest_string = "";
  var lengthofString = 0;
  for (i = 0; i < words.length; i++) {
    if (words[i].length > lengthofString){
    longest_string = words[i];
    lengthofString = words[i].length;
    }
  }
console.log("The longest string is " + longest_string);
}


LongestWord(array)
LongestWord(secondarray)