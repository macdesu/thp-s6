#!/usr/bin/node
const f1 = n => (n + 42)

function f2 (n) {
  return (n + 42)
}

const value = 0
console.log("f1 : "+ f1(value))
console.log("f2 : "+ f2(value))
