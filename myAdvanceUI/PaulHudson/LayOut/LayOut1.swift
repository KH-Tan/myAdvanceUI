//
//  LayOut1.swift
//  myAdvanceUI
//
//  Created by Kong Hwi Tan on 4/5/24.
//
// (1) How Layout works
// 1 of 8
// How layout works
// 1) Parent proposes size
// 2) Child decides
// 3) Parent positions child in its coordinate space
// 4) behind the scene: SwiftU rounds floating point pixels to nearest values

// by default LayOut1 is size neutral
// view modifiers create new modified views ***

import SwiftUI

struct LayOut1: View {
    var body: some View {
        Text("Hello, World!")             // Text view become child of background
            .background { Color.red }      // background view become parent of Text view
        
        Text("Hello, World!")             // Text view become child of padding & background
            .padding(20)                // this is NOT layout neutral
            .background { Color.red }      // background view become parent of Text view

        Text("Hello, World!")             // Text view become child of background
            .background { Color.red }      // background view become parent of Text view
            .padding(20)
            .background(.orange)
            .padding(20)
        
        Color.blue                    // layout neutral - can be drawn any size (any available size)
        
        Color.mint
            .frame(width: 200, height: 200)      // Color.mint   is put into frame (of fixed size Parent)
    }
}

#Preview {
    LayOut1()
}
