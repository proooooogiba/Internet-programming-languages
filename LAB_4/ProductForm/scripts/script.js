function changeData() {
    let data = document.getElementById("price-range").value.toString();
    document.getElementById("price-label").innerHTML = data;
}

function createNewProductRow(tbody, number) {
    let newRow = tbody.insertRow();
    newRow.setAttribute('id', number);
    let numberCell = newRow.insertCell();
    let nameCell = newRow.insertCell();
    let costCell = newRow.insertCell();
    return Array(numberCell, nameCell, costCell);
}

function createNewTextNodes(number, name, price) {
    let numberText = document.createTextNode(number);
    let nameText = document.createTextNode(name);
    let costText = document.createTextNode(price);
    return Array(numberText, nameText, costText);
}

function addTextNodesToCells(productRow, productRowTexts) {
    productRow[0].appendChild(productRowTexts[0]);
    productRow[1].appendChild(productRowTexts[1]);
    productRow[2].appendChild(productRowTexts[2]);
    return productRow;
}

function clearInputField() {
    document.getElementById("nameProductForm").value = "";
}

function changeStyleFontWeight(productRow) {
    productRow[0].style = "font-weight: bold";
}

function modifyCell(element) {
    element.style = "color: white; background-color:rgba(0, 98, 255, 0.551); transition-property: backgroundcolor; transition-duration: 4s; transition-delay: 2s;"
}

function modifyCellToOrdinary(element) {
    element.style = "color: black; background-color: white;";
}

function addProduct() {
    let name = document.getElementById("nameProductForm").value;
    let price = document.getElementById("price-label").innerHTML;
    let table = document.getElementById('product-table');
    let number = table.tBodies[0].rows.length + 1;

    let tbodyRef = document.getElementById('product-table').getElementsByTagName('tbody')[0];

    let newProductRow = createNewProductRow(tbodyRef, number);
    newProductRow[2].addEventListener('mouseover', function () { modifyCell(newProductRow[2]); }, true);
    newProductRow[2].addEventListener('mouseout', function () { modifyCellToOrdinary(newProductRow[2]); }, true);
    let newProductRowTexts = createNewTextNodes(number, name, price);

    changeStyleFontWeight(newProductRow);
    clearInputField();
    addTextNodesToCells(newProductRow, newProductRowTexts);

    if (document.getElementById('warning') != null) {
        document.getElementById('warning').textContent = "данные о стоимости заказа устарели, пожалуйста - обновите их"
        document.getElementById('warning').style = "color: #F03457; font-size: 10px;";
    }
}

function setIds(summaryRow) {
    summaryRow[1].setAttribute('id', 'warning');
    summaryRow[2].setAttribute('id', 'cost-of-all');
    return summaryRow;
}

function fillTextNodesSummaryRow(orderCost) {
    let summaryText = document.createTextNode("Итого");
    let emptyText = document.createTextNode("");
    let costText = document.createTextNode(orderCost);
    return Array(summaryText, emptyText, costText);
}

function createSummaryRow(orderCost) {
    let tfootRef = document.getElementById('product-table').getElementsByTagName('tfoot')[0];
    let summaryRow = createNewProductRow(tfootRef, 0);
    summaryRow = setIds(summaryRow);
    clearInputField();
    let summaryTextNodes = fillTextNodesSummaryRow(orderCost);
    changeStyleFontWeight(summaryRow);
    addTextNodesToCells(summaryRow, summaryTextNodes);
}

function countOrderCost(table) {
    let tbodyRowCount = table.tBodies[0].rows.length;
    let orderCost = 0;
    for (let i = 0; i < tbodyRowCount; i++) {
        orderCost += Number(table.tBodies[0].rows[i].cells[2].innerHTML);
    }
    return orderCost;
}

let flag = true;

function evaluateCost() {
    let table = document.getElementById('product-table');
    let orderCost = countOrderCost(table);
    console.log(orderCost);
    if (flag) {
        createSummaryRow(orderCost);
        flag = false;
    } else {
        document.getElementById('cost-of-all').textContent = orderCost;
        if (document.getElementById('warning').textContent != "") {
            document.getElementById('warning').textContent = "";
        }
    }
}