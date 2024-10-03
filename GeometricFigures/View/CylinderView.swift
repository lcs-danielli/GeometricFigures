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
            
            //1.INPUT
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
            //3.OUTPUT
            //Label (show the current slider value)
            Text("Radius is: \(currentCylinder.radius.formatted())")
            Text("Height is: \(currentCylinder.height.formatted())")
            
            //Label (show the aBase)
            Text("aBase is: \(currentCylinder.aBase.formatted())")
            //Label (show the aLateralSurface)
            Text("aLateralSurface is: \(currentCylinder.aLateralSurface.formatted())")
            //Label (show the volume)
            Text("volume is: \(currentCylinder.volume.formatted())")
            
        }
    }
}

#Preview {
    CylinderView()
}
