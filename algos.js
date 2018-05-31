//RELEASE 0 - FIND THE LONGEST PHRASE
//Write a function that takes an array of words or phrases and 
//returns the longest word or phrase in the array. 
//So if we gave your function the array of 
//["long phrase","longest phrase","longer phrase"], 
//it would return "longest phrase". 

//Add driver code that tests your function on a few arrays.

//Define a function that takes a parameter (of an array)
//Split the array into each string (slice)
//hold split array in a variable (sliceArray)
//Make variable to hold longest phrase length
//compare sliced array phrase lengths to variable that holds the length
// if slice array length is greater than next phrase in comparison
//give longest phrase variable that new value
//have loop run through each phrase and compare
//return the variable that holds the longest Phrase 

 var array = ["dog", "psychoanalysis", "junior"]

function findLongest(array){
	var sliceArray = array.slice();
	var longestPhrase = 0;
	for (var i = 0; i < sliceArray.length; i++){
		if (sliceArray[i].length > longestPhrase){
			longestPhrase = sliceArray[i].length;
		}
	}
	return longestPhrase;
}

///
// function findLongest(array){
// 	//split the array into phrases
// 	var sliceArray = array.slice();
// 	//make variable that will hold the length of the longest word
// 	var longestPhrase = 0;
// 	//create a for loop
// 	for (var i = 0; i < sliceArray.length; i++){ 
// 	//if sliceArray[i].length is greater than the word it is compared with (next line)
// 		if (sliceArray[i].length > longestPhrase){ //(next line continued) then longestPhrase takes the new value
// 			longestPhrase = sliceArray[i].length;
// 		}
// 	}
// 	return longestPhrase; // print/return longest word
// }

// findLongest(array);

//------------------------------------------------------------------------
//RELEASE 1: FIND A KEY-VALUE MATCH
//Write a function that takes two objects and checks to see if the objects 
//share at least one key-value pair. (You'll keep adding to this file, 
//so we suggest grouping functions at the top and testing at the bottom of the file.) 

//Add some driver code that tests both outcomes of your function.

//compare keys:value pairs
function compareKeys(a,b) {
	return Object.keys(a).reduce(function(key,value) {
		if (a[value] != b[value]) key[value] = b[value];
		return key;
	}, {});
}

console.log(compareKeys({Hair: "brown", Eyes: "brown", Pet: "cat"}, {Hair: "brown", Eyes: "hazel", Pet: "cat"}));



//----------------------------------------------------------------------------
//RELEASE 2: GENERATE RANDOM TEST DATA
//Write a function that takes an integer for length, and builds and returns an 
//array of strings of the given length. So if we ran your function with an argument 
//of 3, we would get an array of 3 random words back (the words don't have to be actual 
//sensical English words -- "nnnnfph" totally counts). The words should be of randomly 
//varying length, with a minimum of 1 letter and a maximum of 10 letters. 
//(This involves a new trick, generating a random number, that you'll have to look up,
// but the solution on how to do so is relatively straightforward.)

//Add driver code that does the following 10 times: generates an array, 
//prints the array, feeds the array to your "longest word" function, and 
//prints the result.

//produce a random integer: Math.random(), math.floor() for a whole number
// function that produces a random number between 1-10
function randomInt(){
return (Math.floor(Math.random()*10)+ 1);
}
//Driver code:
randomInt();

// write a function that gives a random letter (to then make into a random word)
//String.fromCharCode()- method that returns a string created by using the specified sequence of Unicode values

function randomChar(){
	return String.fromCharCode(Math.floor(97 + Math.random() * 26));
}
//Driver code:
randomChar();

// write a function that takes a number as a length and adds a word to an array
//return the new array with added words
function randomChar(int){
	var array = [];
	for (i = 0; i < int; i++) {
		var randoWord = "";
		var wLength = randomInt();
		for ( a = 0; a < wLength; a++) {
			randoWord += randomChar();
		}
		array << (randoWord);
	}
	return array;
}

// create a for loop
// make sure a random word can not be longer than 10 characters
//combine fuction of random words array with length of function random numbers
//print results of combination

for (b = 0; b < 10; b++){
	var randoCombo = randomChar(randomInt());
	console.log(randoCombo);
	randoCombo.sort(function(x,y){
		return x.length - y.length
	});
	console.log("Your longest word is:")
	console.log(randoCombo.pop())
}










