// function mysteryScoping1() {
//     var x = 'out of block';
//     if (true) {
//         var x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// // mysteryScoping1();

// function mysteryScoping2() {
//     const x = 'out of block';
//     if (true) {
//         const x = 'in block';

//         console.log(x); 
        
//     }
//     console.log(x);
// }

// // mysteryScoping2();

// function mysteryScoping3() {
//     const x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }

// // mysteryScoping3();

// function mysteryScoping4() {
//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     console.log(x);
// }
// // mysteryScoping4();

// function mysteryScoping5() {

//     let x = 'out of block';
//     if (true) {
//         let x = 'in block';
//         console.log(x);
//     }
//     x = 'out of block again';
//     console.log(x);
// }

// mysteryScoping5();

function madLib(v, adj, noun) {
    return `We shall ${v.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`;
}
// console.log(madLib('make', 'best', 'guac'));

function isSubstring(searchString, subString) {
    if (searchString.includes(subString)) {
        return true
    } else {
        return false
    }
}

// console.log(isSubstring("time to program", "time"));
// console.log(isSubstring("Jump for joy", "joys"));

function fizzBuzz(array) {
    let result = [];
    for (let i = 0; i < array.length; i++) {
        if ((array[i] % 3 === 0 || array[i] % 5 === 0) && !(array[i] % 3 === 0 && array[i] % 5 === 0)) {
            result.push(array[i]);
        }
    }
    console.log(result);
}

// console.log(fizzBuzz([1, 2, 3, 15, 5, 6]));

function isPrime(number) {
    if (number < 2) {
        return false
    }
    for (let i = 2; i < number; i++) {
       if (number % i === 0)   {
           return false
       }       
    }
    return true
}

// console.log(isPrime(2))
// console.log(isPrime(10))
// console.log(isPrime(15485863))
// console.log(isPrime(3548563))

function sumOfNPrimes(n) {

    let results = [];
    // let count = 0;
    for (let i = 2; results.length < n; i++) {
        if (isPrime(i)) {
            results.push(i);
            // count += i;
        }
    }
    return results.reduce((acc, cv) => acc + cv, 0)
    // return count
}

// console.log(sumOfNPrimes(0));
// console.log(sumOfNPrimes(1));
// console.log(sumOfNPrimes(4));


function find_answer(name, ag, rg) {
    const x = "abcdefghijklmnopqrstuvwxyz".split("")
    ind = x.indexOf(name[0])

    let ant_guess = Math.abs(ind - x.indexOf(ag[0])) 
    let rich_guess = Math.abs(ind - x.indexOf(rg[0]))

    if ((ant_guess) > (rich_guess)) {
        return "Richard Wins"
    } else {
        return "Anthony Wins"
    }
}


// console.log(find_answer("quinn", "anthony", "hansaem"));
// console.log(find_answer("mike", "quinn", "mike"));
// console.log(find_answer("james", "quinn", "hansaem"));

console.log(find_answer("cindy", "daniel", "omar"))