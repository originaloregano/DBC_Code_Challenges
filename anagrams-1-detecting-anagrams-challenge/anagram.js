function anagram(word1, word2){
	if (word1.length !== word2.length) {
		//words have to be the same length or they are not anagrams
		return false;
	} else if (word1 === word2) {
		//edge case of if same word
		return true;
	} else {
		return word1.split("").sort().join("") === word2.split("").sort().join("");
	}
}
///////////////////////////////////////
var arr = ['cat', 'dog', 'tac', 'god', 'act'];

var allAnagrams = function(arr) {
    var anagrams = {};
    arr.forEach(function(str) {
        var recurse = function(ana, str) {
            if (str === '') 
                anagrams[ana] = 1;
            for (var i = 0; i < str.length; i++)
                recurse(ana + str[i], str.slice(0, i) + str.slice(i + 1));
        };
        recurse('', str);
    });
    return Object.keys(anagrams);
}

console.log(allAnagrams(arr));
//["cat", "cta", "act", "atc", "tca", "tac", "dog", "dgo", "odg", "ogd", "gdo", "god"]

/////////////////////////////////

var arr = ['cat', 'dog', 'tac', 'god', 'act'];

var allAnagrams = function(arr) {
    var anagrams = {};
    arr.forEach(function(str) {
        var recurse = function(ana, str) {
            if (str === '') 
                anagrams[ana] = 1;
            for (var i = 0; i < str.length; i++)
                recurse(ana + str[i], str.slice(0, i) + str.slice(i + 1));
        };
        recurse('', str);
    });
    return Object.keys(anagrams);
}

console.log(allAnagrams(arr));
//["cat", "cta", "act", "atc", "tca", "tac", "dog", "dgo", "odg", "ogd", "gdo", "god"]
