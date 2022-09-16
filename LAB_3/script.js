function traversal(element) {
    var list = document.getElementById("list-elements");
    let str = `<li class="new">${element.nodeName}</li>`;
    if (element.nodeType != 3) {
        console.log(element.nodeName);
        list.innerHTML += str;
    }
    for (let i = 0; i < element.childNodes.length; i++) {
        if (element.childNodes[i].className != "new") {
            traversal(element.childNodes[i]);
        }
    }
}

window.onload = function (e) { traversal(document) };
