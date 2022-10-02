function showMsg() {
    alert("Hey!");
}

let counter = 0;

function copyData() {
    let data = document.getElementById("tut").value;    
    par = document.createElement("p");
    par.innerHTML = data;
    document.body.appendChild(par);
    par.setAttribute('id', counter);
    counter++;
    par.setAttribute('onclick', 'remove(this)');
}

function remove(element) {
    element.remove();
}
