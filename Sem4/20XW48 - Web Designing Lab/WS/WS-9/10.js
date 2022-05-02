// 20PW14
// LeapYear check

function leap(year) {
    return !(year % 100) ? !(year % 400) : !(year % 4);
}

console.log(leap(2004));