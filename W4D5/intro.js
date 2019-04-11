function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
}
// in block then out block

function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
        const x = 'in block';
        console.log(x);
    }
    console.log(x);
}
// in block then out block

function mysteryScoping3() {
    const x = 'out of block';
    if (true) {
        var y = 'in block'; // error
        console.log(y);
    }
    console.log(x);
}

function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping5() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    x = 'out of block again'; // error?
    console.log(x);
}

function madLib(verb, adjective, noun) {
    let str = `We shall ${verb.toUpperCase()} the ${adjective.toUpperCase()} ${noun.toUpperCase()}.`;
    console.log(str);
}

function isSubstring(searchString, subString) {
    return searchString.includes(subString);
}

function fizzBuzz(array) {
    var arr = []
    for(let i = 0; i < array.length; i++) {
        if (array[i] % 3 === 0 && array[i] % 5 != 0) {
            arr.push(array[i]);
        }
        if (array[i] % 5 === 0 && array[i] % 3 != 0) {
            arr.push(array[i]);
        }
    }
    return arr
}

function isPrime(num) {
    for (let i = 2; i < num; i++) {
        if (num % i === 0) {
            return false
        }
    }
    return true
}

function sumOfNPrimes(n) {
    const firstNPrimes = (n) => {
        var arr = [];
        var i = 2;
        while (arr.length != n ){
            if (isPrime(i)){
                arr.push(i);
            }
            i += 1;
        }
        return arr;
    }

    primes = firstNPrimes(n);

    function sumarray(total, num) {
        return total + num;
    }
    return primes.reduce(sumarray, 0);
}


console.log(sumOfNPrimes(0));
console.log(sumOfNPrimes(1));
console.log(sumOfNPrimes(4));
