//
//  VBHUD.swift
//  myAdvanceUI
//
//  Created by Kong Hwi Tan on 3/5/24.
//

import SwiftUI

struct VBHUD: View {
    @State private var isShowingHUD = false
    var body: some View {
        NavigationStack {
            ZStack {
                if isShowingHUD {
                    MyHUD {
                        Text("Hello, World!")
                    }
                }
                ZStack {
                    Button("Show HUD") {
                        withAnimation(.bouncy) {
                            isShowingHUD.toggle()
                        }
                        
                    }
                }
            }
            .navigationTitle("Heads Up Display")
        }
        
        

    }
}

struct MyHUD<Content: View>: View {
    let myContent: Content
    init(@ViewBuilder myContent: () -> Content) {
        self.myContent = myContent()
    }
    var body: some View {
        VStack {
            MyContainer {
                myContent
            }
            Spacer()
        }
        .zIndex(1.0)
        .transition(.move(edge: .top))
        //.animation(.spring, value: 0)
    }
}


#Preview {
    VBHUD()
}
