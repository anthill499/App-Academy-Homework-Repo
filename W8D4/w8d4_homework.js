
// function scheduleGreatMovieReminder(movie) {
//     // remind in one min
//     setTimeout(function () {
//         console.log(`Remember to watch: ${movie}`);
//     }, 60 * 1000);
//     console.log(`Timer set for ${movie}`);
// }

// console.log(scheduleGreatMovieReminder("Citizen Kane"));
// console.log(scheduleGreatMovieReminder("Touch of Evil"));
// console.log(scheduleGreatMovieReminder("The Third Man"));


//     setTimeout(function() {
//         window.alert(`HAMMERTIME`);
//     }, 5000);
// function hammerTime(time) {
//     setTimeout(function () {
//         window.alert(`${time} is hammertime!`);
//     }, time);
// }
// console.log(hammerTime(5000));

function teaAndBiscuits() {

    reader.question('Would you like some tea?', (res) => {
        let first = res;
        console.log(`You replied ${res}.`);
    });

    reader.question('Would you like some biscuits?', (res) => {
        let second = res;
        console.log(`You replied ${res}.`);
    });
    
    const firstRes = (first === 'yes') ? 'do' : 'don\'t';
    const secondRes = (second === 'yes') ? 'do' : 'don\'t';
    console.log(`So you ${firstRes} want tea and you ${secondRes} want biscuits.`);
    reader.close();
}





// console.log(iterate([1, 2, 3, 4, 2]));

