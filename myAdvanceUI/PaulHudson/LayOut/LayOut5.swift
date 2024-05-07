//
//  LayOut5.swift
//  myAdvanceUI
//
//  Created by Kong Hwi Tan on 4/5/24.
//
// (5) using GeometryReader to resize images

import SwiftUI

struct LayOut5: View {
    var body: some View {
        Spacer()
        
        Image(systemName: "heart.fill")
            .resizable()
            .scaledToFit()
            .padding()
            .frame(width: 400, height: 200, alignment: .trailing)
            .background(.blue)

        GeometryReader { geometry in
            Image(systemName: "heart.fill")
                .resizable()
                .scaledToFit()
                .padding()
                .frame(width: geometry.size.width * 0.25)           // 25% of width of screen
                .background(.gray)
                //.padding(30)
        }
        
        HStack {
            Text("Important Info:")
                .frame(width: 200)
                .background(.gray)
            
            GeometryReader { geometry in
                Image(systemName: "heart.fill")
                    .resizable()
                    .scaledToFit()
                    .padding()
                    .frame(width: geometry.size.width * 0.5)
                    .frame(width: geometry.size.width * 0.5, height: geometry.size.height)    //height required for centering
                    .background(.green)
            }
        }
            
        Spacer()
  
    }
}

#Preview {
    LayOut5()
}
