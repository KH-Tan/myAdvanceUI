//
//  VBContainerViews.swift
//  myAdvanceUI
//
//  Created by Kong Hwi Tan on 3/5/24.
//

import SwiftUI

struct VBContainerViews: View {
    var body: some View {
        NavigationStack {
            MyContainer {
                Text("Container View")
                Text("Container View")
            }
            .navigationTitle("Container View")
        }
        Text("Hello, World!")
    }
}

struct MyContainer<Content: View>: View {
    let myContent: Content
    init(@ViewBuilder myContent: () -> Content) {
        self.myContent = myContent()
    }
    
    var body: some View {
        VStack {
            myContent
                //.padding(5)
        }
        .padding(25)
        .background(RoundedRectangle(cornerRadius: 15.0).fill(.brown))
        .foregroundStyle(.white)
        .shadow(radius: 10)


    }
}




#Preview {
    VBContainerViews()
}
