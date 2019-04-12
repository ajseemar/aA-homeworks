const titleize = (arr, func) => {
    out = arr.map(name => `Mx. ${name} Jingleheimer Schmidt`);
    func(out);
}

const printCallback = (arr) => {
    arr.forEach(title => console.log(title));
}


function Elephant(name, height, tricks) {
    this.name = name;
    this.height = height;
    this.tricks = tricks;
}

Elephant.prototype.trumpet = function() {
    return `${this.name} the elephant goes phrRRRRRRRRRR!!!!`;
};

Elephant.prototype.grow = function() {
    this.height += 12;
}

Elephant.prototype.addTrick = function(trick){
    this.tricks.push(trick)
}

Elephant.prototype.play = function() {
    return this.tricks[Math.floor(Math.random() * this.tricks.length)]
}

Elephant.paradeHelper = function(e) {
    console.log(`${e.name} is trotting by!`);
    console.log(e.trumpet());
    console.log(e.play());
    console.log("---------------------------");
};


function dinerBreakfast() {
    let order = "I'd like cheesy scrambled eggs please.";
    console.log(order);
    
    return (food) => {
        order = `${order.slice(0, order.length - 8)} and ${food} please.`;
        console.log(order);
    }
}
