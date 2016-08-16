console.log("The Script is running!");

document.getElementById('welcome statement').style.color = "blue";

function changepic(event) {
  console.log("The Button was Pressed;");
  console.log(event);
  var chicago = document.getElementById("chicago");
  chicago.src = 'bean.jpg';
}

var photo = document.getElementById("button");
photo.addEventListener("click", changepic);

