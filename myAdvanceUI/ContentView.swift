//
//  ContentView.swift
//  myAdvanceUI
//
//  Created by KH Tan on 1/5/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Divider()
            Text("This is a/an Advanced Project")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
