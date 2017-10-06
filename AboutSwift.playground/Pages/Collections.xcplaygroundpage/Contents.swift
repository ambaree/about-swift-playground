/*:
 ### Array
 An ordered, random-access collection.
 */
// Creating an Empty Array
var array1 = Array<Int>()
var array2 = [Int]() // Array Type Shorthand Syntax

// Creating Array with a Default Value
var array3 = [Int](repeating: 10, count: 2)

// Creating Array by Adding Two Arrays Together
var array4 = array3 + array3

// Creating an Array with an Array Literal
var array5 = [1, 2]

// Remove all Elements
array5 = [] // array5 is now an empty array
/*: 
 ### Set
 An unordered collection of unique elements.
 
 The elements mush be hashable.
 */
// Creating an Empty Set
var set1 = Set<Int>()
// Creating a Set with an Array Literal
var set2: Set = [1, 2, 3]
// Remove all Elements
set2 = [] // set2 is now an empty set
/*:
 - note:
 See SetAlgebra for other set operations
*/
set1.startIndex
set1.makeIterator()
/*: 
 ### Dictionary
 An **unordered** collection whose elements are key-value pairs.
 
 The key mush be hashable.
 */
// Creating an Empty Dictionary
var dictionary1 = Dictionary<Int, String>()
var dictionary2 = [Int: String]() // Dictionary Type Shorthand Syntax

// Creating a Dictionary with a Dictionary Literal
var dictionary3 = [1 : "apple", 2 : "banana"]
dictionary3[1]
dictionary3[1] = nil
dictionary3[1]

// Remove all Elements
dictionary2 = [:] // // array5 is now an empty dictionary

dictionary1.startIndex
dictionary1.makeIterator()

/*
 ## Challenge
 1. Create an integer array
 2. Create a dictionary of month of the year(key) and its respective numerical value(value)
 */
