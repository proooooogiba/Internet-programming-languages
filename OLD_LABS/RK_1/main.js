function check(string) {
    const pattern = /([^0-9\.\s-])|(\s{2,})|(\.{2,})|(\d+\.\d+\.)|(\s$)/;
    return !Boolean(string.match(pattern));
}

function add() {
    text = document.getElementById('input-form').value;
    if (!check(text)) {
        alert("Incorrect input");
        return;
    }
    
    arr = text.split(' ');
    for (let i = 0; i < arr.length; i++) {
        arr[i] = parseInt(arr[i])
    }

    k = arr[arr.length - 1]
    arr.pop()
    maxim = 0
    for (let i = 0; i < arr.length; i++) {
        if (arr[i] > maxim) {
            maxim = arr[i]
        }
    }

    document.getElementById('input-form').value ="";
    console.log(arr, k, maxim);
    new_arr = []
    for (let i = 0; i < arr.length; i++) {
        if ( (arr[i] - maxim).abs <= k) {
            new_arr.push(arr[i]);         
        }
    }

    console.log(new_arr);
    document.getElementById('out').innerText = new_arr.map(String);
}
