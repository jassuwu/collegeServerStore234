// 20PW14
// BracketCheck


function isPaired(str) {
    str = str.replace(/[^[\]{}()]/g, '')
    let stack = [];
    for (let c of str) {
        switch (c) {
            case "(":
                stack.push(c);
                break;
            case ")":
                if (stack.pop() != "(") return false;
                break;
            case "[":
                stack.push(c);
                break;
            case "]":
                if (stack.pop() != "[") return false;
                break;
            case "{":
                stack.push(c);
                break;
            case "}":
                if (stack.pop() != "{") return false;
                break;
        }
    }
    return stack.length === 0;
};

console.log(isPaired('{()}'))