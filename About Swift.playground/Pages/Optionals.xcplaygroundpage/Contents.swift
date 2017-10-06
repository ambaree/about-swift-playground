//: [Previous](@previous)

/*:
 # Optionals
 You use optionals in situations where a value may be absent.
 
 An optional says:
 * There is a value, and it equals x.
 * There isn’t a value at all.
 */
var possibleString: String?
possibleString = "Ciao"
possibleString = nil
possibleString = "Hello"
/*:
 ## Forced Unwrapping
 
 Once you’re sure that the optional does contain a value, you can access its underlying value by adding an exclamation mark (!) to the end of the optional’s name.
 
 Trying to use ! to access a non-existent optional value triggers a runtime error.
 */
if possibleString != nil {
    print(possibleString!)
}
/*:
 ## Optional Binding
 
 You use optional binding to find out whether an optional contains a value, and if so, to make that value available as a temporary constant.
 */
if let constantString = possibleString {
    print("Value: \(constantString)")
}

func checkOptionalString(optionalString: String?) {
    guard let constantString = optionalString else {
        print("nil value")
        return
    }
    print(constantString)
}

checkOptionalString(optionalString: possibleString)

/*
 ## Challenge
 1. Create a variable and use optional binding to find out if it's a nil value. Print out its value in the console
 2. Use guard let to check if a variable is optional. If it is a nil value, print "nil value" in the console. If it's not a nil value, print the value of the variable in the console.
*/




