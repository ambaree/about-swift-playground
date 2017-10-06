//: [Previous](@previous)
import Foundation
//: # Strings
let emptyString = String()
let anotherEmptyString = ""

let someString = "Some string literal value"
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
//: ## String Interpolation
let apples = 4
print("There are \(apples) apples")

//: ## Multiline String Literals
let quotation = """
The White Rabbit put on his spectacles.  "Where shall I begin,
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on
till you come to the end; then stop."
"""
//: Line break
let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \
till you come to the end; then stop."
"""

/*
 ## Challenge
 1. Create your own multiline string
 */
