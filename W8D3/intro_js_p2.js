// callbacks
"use strict"

Array.prototype.titleize = function(callback) {
    
    const cap = this.map(ele => (ele[0].toUpperCase() + ele.slice(1, ele.length).toLowerCase()));
    const twoCap = cap.map(element => jingleHeimer(element));
    for (let i = 0; i < twoCap.length; i++) {
        console.log(twoCap[i])
    }
}

// // callback
// const jingleHeimer = function(name) {
//     return `Mx. ${name} Jingleheimer Schmidt`
// }
// console.log(["anthony", "richard", "cindy"].titleize(jingleHeimer()));

class Elephant {

    constructor(name, height, tricks) {
        this.height = height;
        this.name = name;
        this.tricks = tricks;
    }
    
    trumpet() {
        return `${this.name} the elephant goes 'phrRRRRRRRRRRR!!!!!!!`
    }

    grow() {
        this.height += 12;
        return this.height;
    }

    addTrick(trick) {
        this.tricks.push(trick);
        this.tricks;
    }

    play() {
        let int = Math.floor(Math.random() * (this.tricks.length - 1)); //floor rounds down
        return `${this.name} is ${this.tricks[int]}`
    }
    
    static paradeHelper(elephant) {             
        console.log(`${elephant.name} is trotting by`);
    }
    
}

let anthony = new Elephant(50, "Anthony", ["eating a burger", "doing a backflip"]);

let ellie = new Elephant("Ellie", 185, ["giving human friends a ride", "playing hide and seek"]);
let charlie = new Elephant("Charlie", 200, ["painting pictures", "spraying water for a slip and slide"]);
let kate = new Elephant("Kate", 234, ["writing letters", "stealing peanuts"]);
let micah = new Elephant("Micah", 143, ["trotting", "playing tic tac toe", "doing elephant ballet"]);
Elephant.herd = [ellie, charlie, kate, micah, anthony];

const stampede = function() {
    // return Elephant.herd
    console.log(Elephant.herd.forEach(element => Elephant.paradeHelper(element)));
}

// console.log(stampede());

// Phase IV: Closures

function dinerBreakfast() {
    
}

