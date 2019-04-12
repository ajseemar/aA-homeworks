const readline = require('readline');

const reader = readline.createInterface(
    {
        input: process.stdin,
        output: process.stdout
    }
);

const teaAndBiscuts = () => {
    let first, second;

    reader.question("Would you like tea?\n", (res) => {
        reader.question("Would you like biscuits?\n", (res) => {
            first = res;
            console.log(`You replied ${first}.`)
        
            second = res;
            console.log(`You replied ${second}.`)
            
            const firstRes = (first === 'yes') ? 'do' : 'don\'t';
            const secondRes = (second === 'yes') ? 'do' : 'don\'t';
            console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
            reader.close();
        });
    });
}

teaAndBiscuts();