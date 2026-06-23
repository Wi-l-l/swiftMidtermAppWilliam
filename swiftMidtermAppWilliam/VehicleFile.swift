//
//  VehicleFile.swift
//  swiftMidtermAppWilliam
//
//  Created by William Liang on 2026-06-23.
//

import Foundation

class Vehicle
{
    var id: Int
    var brand: String
    var dailyRate: Double
    
    init(id: Int, brand: String, dailyRate: Double)
    {
        self.id = id
        self.brand = brand
        self.dailyRate = dailyRate
    }
    
    func calculateRentalCost(days: Int) -> Double
    {
        return dailyRate * Double(days)
    }
}

class Car:Vehicle
{
    var numberOfSeats: Int
    
    init(id: Int, brand: String, dailyRate: Double, numberOfSeats: Int)
    {
        self.numberOfSeats = numberOfSeats
        super.init(id: id, brand: brand, dailyRate: dailyRate)
    }
    
    override func calculateRentalCost(days: Int) -> Double
    {
        var totalCost = dailyRate * Double(days)
        if numberOfSeats <= 4
        {
            return totalCost
        }
        else if numberOfSeats > 4
        {
            return 20 + totalCost
        }
        else
        {
            return 0
        }
    }
}

class Truck:Vehicle
{
    var loadCapacity: Double
    
    init(id: Int, brand: String, dailyRate: Double, loadCapacity: Double) {
        self.loadCapacity = loadCapacity
        super.init(id: id, brand: brand, dailyRate: dailyRate)
    }
    
    override func calculateRentalCost(days: Int) -> Double {
        return (dailyRate * Double(days)) + (loadCapacity * 20)
    }
}
