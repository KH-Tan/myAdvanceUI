//
//  usingComposableViews.swift
//  myAdvanceUI
//
//  Created by Kong Hwi Tan on 3/5/24.
//

import SwiftUI


extension View {
    
    func myRounded(radius: CGFloat=25.0) -> some View {
        self.clipShape(RoundedRectangle(cornerRadius: radius, style: .continuous))
    }
    
}


struct usingComposableViews: View {
    @State private var showNotification: Bool = false
    let screenSize = UIScreen.main.bounds
    

    var body: some View {
        Text("Hello, World!")
        
        ZStack {
            Button(showNotification ? "Hide" : "Show") {
                
                withAnimation(.spring) {
                    showNotification.toggle()
                }

            }

            
            myNoticationView {
                Text("Hello")
            }
            .setType(.error)
            .myRounded()
            .padding()
            .offset(y: showNotification ? screenSize.height/3 : screenSize.height)

        }



//        myNoticationView2 {
//            Text("Hi")
//        }
//        .padding()

        //

        
        
    }
    
    

}

#Preview {
    usingComposableViews()
}
