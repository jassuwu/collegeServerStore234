// 20PW14
// AcronymMaker

function parseAcronym(str) {
    return str.match(/[A-Z](?=[a-z])|\b\w/g).join("").toUpperCase();
}

console.log(parseAcronym("People eat nice icecold stuff"))