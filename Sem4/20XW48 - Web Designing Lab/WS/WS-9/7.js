// 20PW14
// Age on different planets

const RATIO = {
    mercury: 0.2408467,
    venus: 0.61519726,
    earth: 1,
    mars: 1.8808158,
    jupiter: 11.862615,
    saturn: 29.447498,
    uranus: 84.016846,
    neptune: 164.79132
},
    EARTH_YEAR = 31557600
function age(planet, seconds) {
    return Number((seconds / EARTH_YEAR / RATIO[planet]).toFixed(2))
}

console.log(age('mercury', 8000000));