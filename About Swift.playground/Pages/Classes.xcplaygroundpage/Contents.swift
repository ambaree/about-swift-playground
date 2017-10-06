//: [Previous](@previous)

//: # Classes

/*:
 - note:
 Classes are Reference Types
 */

//: ## Inheritance
class SomeSuperclass {
    
    //_____________________________________________
    // Instance Property
    
    var storedProperty = ""
    
    var computedProperty: String {
        return "SomeSuperclass"
    }
    
    //_____________________________________________
    // Instance Methods
    
    func instanceMethod() {
        
    }
    
}

class SomeSubclass: SomeSuperclass {
    // You must always state both the name and the type of the property you are overriding.
    
    
    //_____________________________________________
    // Overriding Property Getters and Setters
    //
    // You can present an inherited read-only property as a read-write property by providing both a
    // getter and a setter but not the other way around.
    override var computedProperty: String {
        return super.computedProperty + "- SomeSubclass"
    }
    
    //_____________________________________________
    // Overriding Property Observers
    // Property observers can be added to any property (stored or computed property).
    
    // When you assign a default value to a stored property, or set its initial value within an
    // initializer, the value of that property is set directly, without calling any property observers.
    
    // The willSet and didSet observers of superclass properties are called when a property is set in
    // a subclass initializer.
    
    // You cannot add property observers to inherited constant stored properties or inherited read-only
    // computed properties.
    override var storedProperty: String {
        didSet {
            
        }
    }
    
    //_____________________________________________
    // Overriding Methods
    override func instanceMethod() {
        print("SomeSubclass - someMethod")
    }
    
}

