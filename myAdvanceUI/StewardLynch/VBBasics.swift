//
//  VBBasics.swift
//  myAdvanceUI
//
//  Created by Kong Hwi Tan on 3/5/24.
//

import SwiftUI

struct VBBasics: View {
    @State private var isSquare = true
    
    var body: some View {
        NavigationStack {
            Button {
                isSquare.toggle()
            } label: {
                squareOrCircle()
            }
            .navigationTitle("The Basics")
        }
    }
    

    
}

extension VBBasics {
    @ViewBuilder func squareOrCircle() -> some View {
        if isSquare {
            RoundedRectangle(cornerRadius: 10)
                .fill(.green)
                .frame(width: 100, height: 100)
        } else {
            Circle()
                .fill(.red)
                .frame(width: 100)
        }
    }
}


#Preview {
    VBBasics()
}
