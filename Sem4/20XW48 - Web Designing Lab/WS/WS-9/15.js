// 20PW14
// Gigasecond


function gigasecond(input) {
    return new Date(Number(input) + 10e11)
}
console.log(gigasecond(0)) // milliseconds input