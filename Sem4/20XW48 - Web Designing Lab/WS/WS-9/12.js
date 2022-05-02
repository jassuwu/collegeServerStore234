// 20PW14
// ISBN verifier

function isValid(str) {
    var arr = str.split("-").join("").split("");
    if (arr.length != 10) return false;
    if (arr[9] == "X") arr[9] = 10;
    return arr.reduce((a, v, i) =>
        a + v * (10 - i)
        , 0) % 11 == 0;
};

console.log(isValid('3-598-21508-8'))