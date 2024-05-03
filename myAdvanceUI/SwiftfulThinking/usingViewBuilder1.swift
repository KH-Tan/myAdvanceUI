//
//  usingViewBuilder1.swift
//  myAdvanceUI
//
//  Created by Kong Hwi Tan on 3/5/24.
//

import SwiftUI

struct myHeaderView: View {
    let myTitle: String
    let myDescription: String?
    
    var body: some View {
        VStack { Text(" ") }.frame(height: 0)
        
        VStack(alignment: .leading, spacing: 5) {
            Text(myTitle)
                .font(.largeTitle)
                .fontWeight(.bold)
            if let tmpDescription = myDescription {
                Text(tmpDescription)
                    .font(.title3)
            }
            Divider()
                .frame(height: 3).background(.red)
        }
        .padding(15)
        .frame(height: 50)
        .frame(maxWidth: .infinity, alignment: .leading)
        //.background(.gray)
        //.opacity(0.5)
        //.padding()
        Spacer()
    }
}

struct myFooterView: View {
    var body: some View {
        Spacer()
    }
}

struct myHeaderViewGeneric<Content: View>: View {
    let myTitle: String
    let myContent: Content
    
    init(_ myTitle: String, @ViewBuilder myContent: () -> Content) {
        self.myTitle = myTitle
        self.myContent = myContent()
    }
    
    
    var body: some View {
        VStack { Text(" ") }.frame(height: 0)
        
        VStack(alignment: .leading, spacing: 5) {
            Text(myTitle).font(.largeTitle).fontWeight(.bold)
 
            Divider().frame(height: 3).background(.red)

            myContent

        }
        .padding(15)
        //.frame(height: 50)
        //.frame(maxWidth: .infinity, alignment: .leading)
        //.background(.gray)
        //.opacity(0.5)
        //.padding()
        Spacer()
    }
}





struct usingViewBuilder1: View {
    var body: some View {
        VStack {
            myHeaderView(myTitle: "Hola", myDescription: "from Spain")
            myHeaderView(myTitle: "Hello", myDescription: nil)
            Text("Content")
            myHeaderViewGeneric("My Generic Title") {
//                HStack {
                    Text("Hello")
//                    Spacer()
                    Text("Hola")
//                    Spacer()
                    Text("Konnichi Wa")
//                }
            }

            myFooterView()
        }

    }
}

#Preview {
    usingViewBuilder1()
}
