//
//  PinCode.swift
//  eventara
//
//  Created by Ghaliah Altoom on 01/04/1445 AH.
//

import SwiftUI

struct PinCode: View {
    @State private var drawing = Path()
       @State private var currentPoint: CGPoint?
       @State private var pencilColor = Color.blue // Change the color here
    
    
    var body: some View {
        GeometryReader { geometry in
             ZStack {
                 Path { path in
                     path.addPath(drawing)
                 }
                 .stroke(pencilColor, lineWidth: 3)
                 .background(Color.white.opacity(0.5))
                 .gesture(
                     DragGesture(minimumDistance: 0.1)
                         .onChanged { value in
                             let location = value.location
                             if currentPoint != nil {
                                 drawing.addLine(to: location)
                             } else {
                                 drawing.move(to: location)
                             }
                             currentPoint = location
                         }
                         .onEnded { _ in
                             currentPoint = nil
                         }
                 )
                 
                 
             }
         }
     }
 }

#Preview {
    PinCode()
}
