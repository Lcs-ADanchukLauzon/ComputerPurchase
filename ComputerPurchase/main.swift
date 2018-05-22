//
//  main.swift
//  ComputerPurchase
//

import Foundation

// INPUT
// Global variable, tracks how many computers we are going to collect specs for
var countOfExpectedSpecsThatWillBeProvided = 0
while true {
    
    print("How many specs will be provided?")
    guard let input = readLine() else{
        continue
    }
    
    guard let intInput = Int(input) else {
        continue
    }
    
    if intInput < 0 || intInput > 10 {
        continue
    }

    countOfExpectedSpecsThatWillBeProvided = intInput
    break
}

if countOfExpectedSpecsThatWillBeProvided == 0 {
    exit(9)
}


// PROCESS & OUTPUT

var bestComputerSpec = 0
var bestComputerName = ""
// Collect the list of computer specs here
for counter in 1...countOfExpectedSpecsThatWillBeProvided {
    
    // Ask user for the specs for a given computer
    print("Spec \(counter)?")
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    let splitInput = givenInput.split(separator: " ")
    let computerName = String(splitInput[0])
    let computerRAM = Int(splitInput[1])
    let computerCPU = Int(splitInput[2])
    let computerDiskSpace = Int(splitInput[3])
    
    let specResult = 2 * computerRAM! + 3 * computerCPU! + computerDiskSpace!
    
    
    if specResult > bestComputerSpec {
        bestComputerSpec = specResult
     bestComputerName = computerName
    }
    
}

 // Implement the rest of your logic here...
print("The best computer for you is \(bestComputerName)")


