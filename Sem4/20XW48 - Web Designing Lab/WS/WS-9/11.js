// 20PW14
// Transpose

function transpose(string) {
    let result = []
    if (string.length === 0) {
        return result
    }
    const resultRowCount = string.reduce((a, b) => {
        return a.length > b.length ? a : b
    }, '').length
    for (var x = 0; x < resultRowCount; x++) {
        let resultRow = ''
        for (var y = 0; y < string.length; y++) {
            if (string[y][x]) {
                resultRow += string[y][x]
            } else {
                resultRow += ' '
            }
        }
        result.push(resultRow)
    }
    result[result.length - 1] = result[result.length - 1].trimEnd()
    return result
}

console.log(transpose(['ABC', 'DE']))