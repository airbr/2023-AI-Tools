// a function which takes two strings and returns true if they are anagrams of each other.
// An anagram is a word or phrase formed by rearranging the letters of a different word or phrase,
// typically using all the original letters exactly once.
// https://en.wikipedia.org/wiki/Anagram

const isAnagram = (stringA, stringB) => {
  let stringAArray = stringA.split('').sort().join('');
  let stringBArray = stringB.split('').sort().join('');
  if (stringAArray === stringBArray) {
    return true;
  } else {
    return false;
  }
}

module.exports = isAnagram
