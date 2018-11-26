let first = null
let current = null
let result = null
let opp = null
let calculator = document.getElementById('display')

const add = (a, b) => a + b
const substract = (a, b) => a - b
const multiply = (a, b) => a * b
const divide = (a, b) => a / b

function clearScreen() {
  current = 0
  display.innerHTML = current
  console.log("cleared !")
}

function numPress(n) {
  if (current == 0) {
    current = n
  } else {
    current = current * 10 + n
  }
  display.innerHTML = current
  console.log(current)
}

function opPress(op) {
  if (op === 1)
    console.log('+')
  else if (op === 2)
    console.log('-')
  else if (op === 3)
    console.log('*')
  else if (op === 4)
    console.log('/')
  opp = op
  first = current
  current = 0
}

function calculate() {
  if (opp === 1)
    result = add(first, current)
  else if (opp === 2)
    result = substract(first, current)
  else if (opp === 3)
    result = multiply(first, current)
  else if (opp === 4)
    result = divide(first, current)
  display.innerHTML = result
  console.log(result)
  opp = null
  first = null
  current = null
}
