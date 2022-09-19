let flag = true;
function traversal(element, str) {
    var list = document.getElementById("list-elements");
    if (flag) {
        str = `<li class="new">${element.nodeName}</li>`;
        flag = false; 
    }
    // let str = `<li class="new">${element.nodeName}</li>`;
    if (element.nodeType != 3) {
        console.log(element.nodeName);
        list.innerHTML += str;
    }
    for (let i = 0; i < element.childNodes.length; i++) {
        if (element.childNodes[i].className != "new") {
            traversal(element.childNodes[i], '<ul class="new">'+ str +'</ul>');
        }
    }
}

window.onload = function (e) { traversal(document, `<li class="new">${document.nodeName}</li>`) };
