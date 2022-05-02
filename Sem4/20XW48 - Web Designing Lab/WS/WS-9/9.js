// 20PW14
// Reverse a string

function reverseString(str) {
    return [...str].sort(() => -1).join('');
}

console.log(reverseString('MADAM'));