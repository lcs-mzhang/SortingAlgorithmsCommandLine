//
//  main.swift
//  SortingAlgorithmsCommandLine
//
//  Created by Gordon, Russell on 2018-02-26.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// --------------- Convenience functions ---------------

// Generates a random number between the minimum and maximum values given (inclusive)
func random(between min: UInt32, and max: UInt32) -> Int {
    return Int(arc4random_uniform(max - min + 1) + min)
}

// ----------- Start of main part of program -----------

// Ask the user if they are ready to begin
print("Press any key to generate the unsorted list.", terminator: "")

// Wait for a key to be pressed
let input = readLine()

// create the array and populate it
var deck : [Int] = []
for _ in 1...13
{
    deck.append( random(between: 1, and: 50))
}

// Show the user the contents of the array
print("-----")
print("The contents of the unsorted list:")
for i in 0...deck.count - 1 {
    print("Index \(i), value: \(deck[i])")
}
print("-----")

// ----------- Write code to sort the array here -----------
print("Now sorting the array...")

var sortedDeck : [Int] = []

// set lowest value to highest expected value, then find lowest
var lowest : Int
var lowestIndex : Int
var i : Int
while deck.count > 0
{
    lowest = 50
    lowestIndex = deck.count
    i = 0
    //find the lowest number in the unsorted list
    while i < deck.count
    {
        if lowest > deck[i]
        {
            lowest = deck[i]
            lowestIndex = i
        }
        i += 1
    }
    
    // add the lowest value to the sorted list, then remove that value from the unsorted list
    sortedDeck.append(lowest)
    deck.remove(at: lowestIndex)
}

print("The sorted deck is \(sortedDeck)")

// ----------- Final part of the program, show the sorted list -----------
print("-----")
print("The contents of the sorted list:")
for i in 0...sortedDeck.count - 1 {
    print("Index \(i), value: \(sortedDeck[i])")
}
print("-----")


