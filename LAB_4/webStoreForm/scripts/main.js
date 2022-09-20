function addRowEventListeners() {
    let table = document.getElementById('product-table');
    for (let i = 0; i < table.tBodies[0].rows.length; i++) {
        table.tBodies[0].rows[i].addEventListener('click', function () { AddProduct(table.tBodies[0].rows[i].cells[1].innerHTML, table.tBodies[0].rows[i].cells[2].innerHTML); }, true);
    }
}

function addRowEventListenersOrderTable(id) {
    let table = document.getElementById(id);
    for (let i = 0; i < table.tBodies[0].rows.length; i++) {
    table.tBodies[0].rows[i].addEventListener('mouseover', function () {hoverRow(table.tBodies[0].rows[i]);}, true);
    table.tBodies[0].rows[i].addEventListener('mouseout', function () {noneHoverRow(table.tBodies[0].rows[i]);}, true);
    }
}

function hoverRow(row) {
    row.style = "background-color:rgba(0, 98, 255, 0.451); transition-property: backgroundcolor; transition-duration: 4s; transition-delay: 2s;";
    for (let i = 0; i < row.cells.length; i++) {
        row.cells[i].style = "color: rgba(255,255,255, 0.9);";
    }
}

function noneHoverRow(row) {
    row.style = "color: black; background-color: white;";
    for (let i = 0; i < row.cells.length; i++) {
        row.cells[i].style = "color: rgba(0,0,0, 1);";
    }
}

function createNewProductRow(tbody) {
    let newRow = tbody.insertRow();
    let nameCell = newRow.insertCell();
    let costCell = newRow.insertCell();
    return Array(nameCell, costCell);
}

function createNewTextNodes(name, price) {
    let nameText = document.createTextNode(name);
    let costText = document.createTextNode(price);
    return Array(nameText, costText);
}

function addTextNodesToCells(productRow, productRowTexts) {
    productRow[0].appendChild(productRowTexts[0]);
    productRow[1].appendChild(productRowTexts[1]);
    return productRow;
}

function AddProduct(name, price) {
    let tbodyRef = document.getElementById('order-table').getElementsByTagName('tbody')[0];
    let newProductRow = createNewProductRow(tbodyRef);
    let newProductRowTexts = createNewTextNodes(name, price);
    addTextNodesToCells(newProductRow, newProductRowTexts);
    addRowEventListenersOrderTable('order-table');
}


function countOrderCost() {
    let table = document.getElementById('order-table');
    let cost = 0;
    for (let i = 0; i < table.tBodies[0].rows.length; i++) {
        cost += parseInt(table.tBodies[0].rows[i].cells[1].innerHTML);
    }
    return cost;
}

function setLabelCost() {
    document.getElementById('calc-res').innerHTML = countOrderCost();
}


window.onload = function (e) { addRowEventListeners() };
