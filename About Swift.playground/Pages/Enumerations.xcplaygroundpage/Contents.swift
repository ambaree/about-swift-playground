//: [Previous](@previous)

//: # Enumeration

/*:
 - note:
 Enumeration are Value Types
 */
enum CompassPoint {
    case north
    case south
    case east, west
}

var aCompassPoint = CompassPoint.west
aCompassPoint = .east

/*
 ## Challenge
 1. Create an enum of the months in a year
 */
