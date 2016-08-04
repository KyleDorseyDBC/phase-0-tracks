

// Accept a string as argument for a function
// For each letter in the string we want to take the letter at index 0 
//  and replace it in the length of the string and work backwards.
// print out the new string to the console


function reverse(str){

for (var i = str.length - 1; i >= 0; i-=1){
  console.log(str[i]);
}
}

var my_name = "kyle";

console.log(reverse(my_name));

var your_name = "tyler the leader of the wolf pack";

console.log(reverse(your_name));