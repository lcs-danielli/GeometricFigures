//
//  CylinderView.swift
//  GeometricFigures
//
//  Created by 李泽宇 on 2024-10-03.
//

import SwiftUI

struct CylinderView: View {
    
    //MARK: Stored Properties
    @State var currentCylinder = cylinder(radius: 50, height: 5)
    
    //MARK: Computed Properties
    var body: some View {
        VStack {
            //Add an image later
            
            //Label (describe what the slider for)
            Text("Radius & Height")
            
            //Slider control - to allow for user input
            Slider(
                value: $currentCylinder.radius,
                in: 1...100,
                step: 1.0
            )
            
            Slider(
                value: $currentCylinder.height,
                in: 1...10,
                step: 0.1
            )
            //Label (show the current slider value)
            Text("Radius is: \(currentCylinder.radius.formatted())")
            Text("Height is: \(currentCylinder.height.formatted())")
        }
    }
}

#Preview {
    CylinderView()
}
