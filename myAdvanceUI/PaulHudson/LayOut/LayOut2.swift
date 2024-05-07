//
//  LayOut2.swift
//  myAdvanceUI
//
//  Created by Kong Hwi Tan on 4/5/24.
//
//  (2) Alignment and alignment guides

import SwiftUI

struct LayOut2: View {
    var body: some View {
        Text("")
        VStack(alignment: .leading) {
            Divider()
            Text("Page Heading")
            Divider()
        }
        .padding(10)
        .frame(width: 380, height: 45, alignment: .leading)
        .background(.orange.opacity(0.5))
        
        Spacer()
        
        Text("Hello, World! Long Live the ...")
            .frame(width: 300, height: 75, alignment: .topLeading)
            //.frame(width: 300, height: 300)
            //.offset(y: 50.0)
            .offset(x: 15.0, y: 15.0)
            .background(.orange.opacity(0.5))

        HStack(alignment: .bottom) {
            Text("Live")
                .font(.title3)
            Text("long")
                .font(.title2)
            Text("and")
                .font(.title)
            Text("prosper?")
                .font(.largeTitle)
        }
        HStack(alignment: .firstTextBaseline) {
            Text("Live")
                .font(.title3)
            Text("long")
                .font(.title2)
            Text("and")
                .font(.title)
            Text("prosper?")
                .font(.largeTitle)
        }
        .background(.blue.opacity(0.5))

        VStack(alignment: .leading) {
            Text("Hello!")
                .alignmentGuide(.leading) { dimension in 0 }
            Text("GoodBye World!")
                .alignmentGuide(.leading) { _ in -30 }
            Text("Hola!")
                .alignmentGuide(.leading) { _ in -60 }
//                .alignmentGuide(.leading) { dimension in
//                    dimension[.trailing]
//                }
        }
        .background(.orange.opacity(0.5))
        .frame(width: 200, height: 200)
        .background(.gray.opacity(0.5))

    }
}

#Preview {
    LayOut2()
}

