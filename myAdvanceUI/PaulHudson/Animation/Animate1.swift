//
//  Animate1.swift
//  myAdvanceUI
//
//  Created by Kong Hwi Tan on 6/5/24.
//

import SwiftUI

struct Animate1: View {
    @State private var animateAmount: Double = 1.0
    
    var body: some View {
        Spacer()
        Button("Tap Here!") {
            if animateAmount < 5 {
                animateAmount += 1
            }
        }
        .padding(40)
        .background(.orange)
        .foregroundStyle(.black)
        .clipShape(.circle)

        //        .overlay {
//            Circle()
//                .stroke(.red)
//                .scaleEffect(animateAmount)
//                .opacity(2 - animateAmount)
//        .animation(
//            .easeOut(duration: 2)
//                .repeatForever(autoreverses: false),
//            value: animateAmount
//        )
//        }
//        .onAppear {
//            animateAmount = 2
//        }

        
        .scaleEffect(animateAmount)

        //.blur(radius: (animateAmount - 1) * 1.5)
        //.animation(.default, value: animateAmount)
        //.animation(.linear, value: animateAmount)
        //.animation(.bouncy(duration: 1, extraBounce: 0.5), value: animateAmount)
        //.animation(.spring(duration: 1, bounce: 0.8), value: animateAmount)
        //.animation(.spring(response: 0.3, dampingFraction: 0.3), value: animateAmount)
        
        Spacer()
    }
}

#Preview {
    Animate1()
}
