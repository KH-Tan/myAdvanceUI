//
//  myGroupBox.swift
//  myAdvanceUI
//
//  Created by KH Tan on 1/5/24.
//

import SwiftUI

struct usingGroupBox: View {
    var body: some View {
        VStack(
            alignment: .leading,
            spacing: 15
        )
        {
            GroupBox { Text("Hello, World!") }

            Spacer()
            
            GroupBox("GroupBox") {
                Text("Hello, World!")
                Text("Hello, Hola, Konnichi Wa & many other languages!")
            }
            .frame(width: 200)
            .groupBoxStyle(.myGroupBoxStyle)

            GroupBox {
                    Text("Hello, Hola, Konnichi Wa & many other languages! Hello, Hola, Konnichi Wa & many other languages!")
            } label: {
                    Label("Now Playing", systemImage: "music.note")
            }
            .frame(width: 300)
            .groupBoxStyle(.myGroupBoxStyle)

            GroupBox {
                GroupBox {
                    Text("Hello, Hola, Konnichi Wa & many other languages! Hello, Hola, Konnichi Wa & many other languages! ")
                }
                .groupBoxStyle(.myGroupBoxStyle)
       
            } label: {
                Label("Now Playing", systemImage: "music.note")
            }
            .frame(width: 400)
            .groupBoxStyle(.myGroupBoxStyle)
                        
        }
        .padding()

        Spacer()
        
    }
}

extension GroupBoxStyle where Self == myVmGroupBoxStyle {
    static var myGroupBoxStyle: myVmGroupBoxStyle { .init() }
}

struct myVmGroupBoxStyle: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        VStack(alignment: .leading) {
            configuration.label
                .bold()
                .font(.title2)
                .fontDesign(.monospaced)
                .foregroundStyle(.blue)
            Divider()
            configuration.content
                .font(.body)
        }
        .padding()
        .background(
            .gray.opacity(0.5),
            //.thickMaterial,
            //.ultraThinMaterial,
            in: RoundedRectangle(cornerRadius: 25.0))
    }
}

#Preview {
    usingGroupBox()
}
