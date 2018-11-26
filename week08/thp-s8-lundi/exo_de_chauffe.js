#!/usr/bin/node
const my_max = arr => Math.max(...arr)
const vowel_count = s => s.match(/[aeiouy]/gi).length
const reverse = s => s.split('').reverse().join('')

// tests
var str = "Hello, World!"
var nbrs = [1, 42, '6', 24, 666, 1337, 2]

console.log(my_max(nbrs))
console.log(vowel_count(str))
console.log(reverse(str))
