//: [Previous](@previous)

//: # Functions

//: ## Functions Without Parameters
func functionWithoutParameters() {
    
}

functionWithoutParameters()
//: ## Functions With Return Values
func funcWithReturnValue() -> Bool {
    return false
}

let aBool = funcWithReturnValue()
/*:
 ## Functions With Parameters
 
 Each function parameter has both an argument label and a parameter name. The argument label is used when calling the function; each argument is written in the function call with its argument label before it. The parameter name is used in the implementation of the function. By default, parameters use their parameter name as their argument label.
 
 */
func difference(x: Int, y: Int) -> Int {
    return x - y
}
difference(x: 1, y: 2)
//: Specifying Argument Labels
func difference(of x: Int, less y: Int) -> Int {
    return x - y
}

difference(of: 1, less: 2)

//: If you don’t want an argument label for a parameter, write an underscore (_) instead of an explicit argument label for that parameter.
func difference(_ x: Int, _ y: Int) -> Int {
    return x - y
}

difference(1, 2)
//: ## Functions With Default Parameter Values
func funcWithDefaultParameterValue(param: Int = 12) {
    print("Value: \(param)")
}

funcWithDefaultParameterValue()
funcWithDefaultParameterValue(param: 1)

/*:
 ## Early Exit
 A guard statement is used to transfer program control out of a scope if one or more conditions aren’t met.
 */
func doSomething(_ optionalValue: Int?) {
    guard let value = optionalValue else {
        print("*** Error **** value must not be nil")
        return
    }
    print("value: \(value)")
}

var optionalValue: Int? = nil
doSomething(optionalValue)

/*
 ## Challenge
 1. create a function to print out hello world in the console and call it
 2. create a function that return the integer sum of 2 integer arguments
 
 */
