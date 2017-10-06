//: # Control Flow
let condition1 = false
let condition2 = false
let condition3 = false

//: ## If
if condition1 {
    // do something
} else if condition2 {
    // do something
} else {
    // do something
}

//: ## For-In

//: 0 <= i <= 4
for i in 0...4  {
    // do something
}
//: 0 <= i < 4
for _ in 0..<4 {
    // do something
}

/*:
 * callout(Wildcard Pattern):
 A wildcard pattern matches and ignores any value and consists of an underscore (_). Use a wildcard pattern when you don’t care about the values being matched against.
 */

//: i = 0, 2, 4
for i in 0...4 where i % 2 == 0  {
    // do something
}
//: is the same of:
for i in 0...4 {
    if i % 2 == 0 {
        // do something
    }
}

//: ## While
while condition1 {
    // do something
}
//: ## Repeat-While
repeat {
    // do something
} while condition1


/*:
 ## Switch
 * Every switch statement must be exhaustive. (If it’s not appropriate to provide a case for every possible value, you can define a default case to cover any values that are not addressed explicitly).
 * The body of each case must contain at least one executable statement.
 * No Implicit Fallthrough.
 */
var number = 0

switch number {
case 0:
    print("0")
case 1:
    print("1")
default:
    print("> 1")
}
//: ### Where & Value Bindings
number = 12

switch number {
case 0:
    print("0")
case let x where x % 2 == 0:
    print("\(number) is even")
default:
    print("\(number) is odd")
}
//: ### Interval Matching
number = 5
switch number {
case 0...5:
    print("0 <= x <= 5")
default:
    print("x >= 6")
}
//: ### Compound Cases
let someCharacter: Character = "e"
switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) is a vowel")
default:
    print("\(someCharacter) is not a vowel")
}

/*
 ## Challenge
 1. Create an if statement to find out if a number is positive or not
 2. Create a while statement to print out "hello" 5 times in the console 
 */

