//
//  main.swift
//  swiftMidtermAppWilliam
//
//  Created by William Liang on 2026-06-23.
//

import Foundation

print("Hello, World!")
var vehicles: [Vehicle] = []
var toContinue = true

//Main program
while toContinue
{
    menu()
    var choice = readLine()!
    
    switch choice
    {
    case "4":
        print("Exiting the program...")
        toContinue = false
    default:
        print("Invalid Input")
    }
}

//Menu
func menu()
{
    print("\nPlease select one of the following options"
          + "\n 1. Add Vehicle"
          + "\n 2. Display All Vehicles"
          + "\n 3. Calculate Rental Cost"
          + "\n 4. Exit"
          + "\n\nEnter your choice:")
}

//Add vehicle


//Display vehicles

//Calculate rental cost


