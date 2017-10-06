//: [Previous](@previous)

//: # Structures

/*:
 - note:
 Structures are Value Types
 */

//: ## Structures With Default Values
struct Person {
    // Properties
    var name = "Nicola"
    var age = 23
    let male = true
}
/*:
 ### Initialization
 
 Swift provides a default initializer for any structure that provides default values for all of its properties and does not provide at least one initializer itself.
 */
var aPerson = Person()
/*:
 Structure types automatically receive a memberwise initializer if they do not define any of their own custom initializers.
 
 Swift provides an automatic external name for every parameter in an initializer.
 */
aPerson = Person(name: "Nicola", age: 23)
//: ## Structures Without Default values
struct Dog {
    var name: String
    var age: Int
    let male: Bool
}
/*:
 ### Initialization
 
 Unlike a default initializer, the structure receives a memberwise initializer even if it has stored properties that do not have default values.
 */
let aDog = Dog(name: "dogName", age: 5, male: true);
/*:
 ## Customizing Initialization
 
 An initializer cannot call any instance methods, read the values of any instance properties, or refer to self as a value until after the first phase of initialization is complete.
 */
struct Celsius {
    var temperatureInCelsius: Double
    
    init(fromFahrenheit fahrenheit: Double) {
        temperatureInCelsius = (fahrenheit - 32.0) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    
    init(_ celsius: Double) {
        temperatureInCelsius = celsius
    }
}

Celsius(fromFahrenheit: 10)
Celsius(fromKelvin: 10)
Celsius(10)
/*:
 ## Initializer Delegation for Value Types
 
 Initializers can call other initializers to perform part of an instance’s initialization.
 
 For value types, you use self.init to refer to other initializers from the same value type when writing your own custom initializers. You can call self.init only from within an initializer.
 */
struct Size {
    var width = 0.0, height = 0.0
}

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    
    //  Calling this initializer returns a Rect instance whose origin and size properties are both initialized with the default values of Point(x: 0.0, y: 0.0) and Size(width: 0.0, height: 0.0).
    init() {}
    
    
    //  This initializer simply assigns the origin and size argument values to the appropriate stored properties.
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    
    //  This initializer starts by calculating an appropriate origin point based on a center point and a size value. It then calls (or delegates) to the init(origin:size:) initializer, which stores the new origin and size values in the appropriate properties.
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        
        // Initializer Delegation
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

let aRect1 = Rect()

let aRect2 = Rect(center: Point(x: 1, y: 10),
                  size: Size(width: 100, height: 80))

let aRect3 = Rect(origin: Point(x: 100, y: 90),
                  size: Size(width: 90, height: 90))

