//
//  Circular.swift
//  CircularSwiftUI
//
//  Created by Tunahan on 8/18/22.
//

import SwiftUI

struct Circular: View {
    let lineWidth : CGFloat
    let backgroundColor : Color
    let foregroundColor : Color
    let percentage : Double // Doluluk degerını tutan bu mıktara gore boyuyacak
    
    
    var body: some View {
       
        GeometryReader {geometry in
            ZStack {
                CircularShape()
                    .stroke(style: StrokeStyle(lineWidth:lineWidth)) // daıreyı cizer
                    .fill(backgroundColor) // daire rengını verir
                
                CircularShape(percent: percentage)
                    .stroke(style: StrokeStyle(lineWidth:lineWidth)) // daıreyı cizer
                    .fill(foregroundColor) // daire rengını verir
                
                
            }.animation(.easeIn(duration: 1), value: percentage)
            .padding(lineWidth / 1.5)
        }
        
        
    }
}

struct Circular_Previews: PreviewProvider {
    static var previews: some View {
        Circular(lineWidth: 10, backgroundColor: .red, foregroundColor: .green, percentage: 50)
    }
}
