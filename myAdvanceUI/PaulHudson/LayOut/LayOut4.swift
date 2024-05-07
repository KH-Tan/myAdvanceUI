//
//  LayOut4.swift
//  myAdvanceUI
//
//  Created by Kong Hwi Tan on 4/5/24.
//
// (4) Absolute Positioning

import SwiftUI

struct LayOut4: View {
    var body: some View {
        Text("Hello, World!")
            .background(.orange.opacity(0.3))         // result very diff
            .offset(x: 100, y: 100)
            //.background(.orange.opacity(0.5))
        
        Spacer()
        
        Text("Hello, World!")
            //.background(.gray.opacity(0.3))         // result very diff
            .position(x: 100, y: 500)
            .background(.gray.opacity(0.5))
        

        
        
    }
}

#Preview {
    LayOut4()
}
