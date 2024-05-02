//
//  myGroupBox.swift
//  myAdvanceUI
//
//  Created by KH Tan on 1/5/24.
//

import SwiftUI

struct usingGroupBox: View {
    var body: some View {
        VStack {
            GroupBox {
                Text("Hello, World!")
            }
            
            GroupBox("GroupBox") {
                Text("Hello, World!")
            }
            //.padding()
     
            GroupBox {
                Text("Hello, Hola and Konnichi wa!")
            } label: {
                Label("Now Playing", systemImage: "music.note")
                    //.font(.title)
            }
            //.padding()
            .frame(width: 240)
        }
        .padding()

        
        
    }
}

#Preview {
    usingGroupBox()
}
