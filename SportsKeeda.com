#To change the colors only as variations of Red
var list = document.getElementsByTagName("P");
//console.log(list
for(var i=0;i<list.length;i++){
    console.log(list[i]);
    var str = list[i].innerText;
    console.log(i+" -> "+str);
    const words = str.split(" ");
    list[i].innerHTML="";
    for(var j=0;j<words.length;j++){
        var wordSpan = document.createElement('span');
        wordSpan.style.color = generateRandomColor();
        wordSpan.innerHTML = words[j]+" ";
        list[i].appendChild(wordSpan);
    }
}

function generateRandomColor() {
  var letters = '0123456789ABCDEF';
  var color = '#FF0';
  for (var i = 0; i < 3; i++) {
    color += letters[Math.floor(Math.random() * 16)];
  }
  return color;
}



#To change color of text and not the background color
var list = document.getElementsByTagName("P");
//console.log(list
for(var i=0;i<list.length;i++){
    console.log(list[i]);
    var str = list[i].innerText;
    console.log(i+" -> "+str);
    const words = str.split(" ");
    list[i].innerHTML="";
    for(var j=0;j<words.length;j++){
        var wordSpan = document.createElement('span');
        wordSpan.style.color = generateRandomColor();
        wordSpan.innerHTML = words[j]+" ";
        list[i].appendChild(wordSpan);
    }
}

function generateRandomColor() {
  var letters = '0123456789ABCDEF';
  var color = '#';
  for (var i = 0; i < 6; i++) {
    color += letters[Math.floor(Math.random() * 16)];
  }
  return color;
}
