//
//  ViewBuilders.swift
//  myAdvanceUI
//
//  Created by Kong Hwi Tan on 3/5/24.
//
// Library of Composable Views (@ViewBuilder)    not SubViews


import SwiftUI

enum NotificationType {
    case warning
    case info
    case error
}


struct myNoticationView<Content: View>: View {

    let content: () -> Content
    
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
//        Text("Notification")
//        Divider()
        
        HStack {
            Spacer()
            self.content()
            Spacer()
        }
        .frame(minHeight: 60)

        
    }
    
    func setType(_ type: NotificationType) -> some View {
        
        switch type {
        case .warning:
            return background(Color.yellow)
        case .info:
            return background(Color.blue)
        case .error:
            return background(Color.red)
        }
    }
    
}

struct myNoticationView2<Content: View>: View {

    let myContent: Content
    
    init(@ViewBuilder myContent: () -> Content) {
        self.myContent = myContent()
    }
    
    var body: some View {
//        Text("Notification")
//        Divider()
        
        myContent
        
    }
}



