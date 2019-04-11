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


function dinerBreakfast(ord = null) {
    let order = ["I'd like cheesy scrambled eggs"];
    if(ord) {
        order.push(ord);
        str = order.join(" and ")
        return () => str + "please."
    } else {
        str = order.join(" and ")
        return () => str + `${order.length === 1 ? " " : ""}please.`
    }
}

// let bfastOrder = dinerBreakfast();
// console.log(bfastOrder());
// bfastOrder("chocolate chip pancakes");
// console.log(bfastOrder());
