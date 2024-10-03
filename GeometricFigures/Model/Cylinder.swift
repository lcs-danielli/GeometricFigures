//
//  Cylinder.swift
//  GeometricFigures
//
//  Created by 李泽宇 on 2024-10-03.
//

import Foundation


protocol Describable {
    var description: String { get }
}

// Define the structure
struct cylinder: Describable {
    
    // stored properties
    var radius: Double

    var aBase: Double {
        return Double.pi * radius * radius
    }
    
    var height: Double
    
    var aLateralSurface: Double {
        return 2 * Double.pi * radius * height
    }
    var total: Double {
        return 2 * aBase + aLateralSurface
    }
    var volume: Double {
        return aBase * height
    }
    var description: String {
        return "The radius of this cylinder is \(radius) units."
    }
}
