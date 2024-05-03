//
//  usingProgressView.swift
//  myAdvanceUI
//
//  Created by Kong Hwi Tan on 2/5/24.
//

import SwiftUI

struct usingProgressView: View {
    @State private var progressValue: CGFloat = 0
    
    var body: some View {
        Text("Hello, World!")
        
        VStack {
            ProgressView(value: progressValue) {
                Label("Battery Level", systemImage: "battery.0")
            }
            //.progressViewStyle(.circular)
            .progressViewStyle(myProgressViewStyle(width: 200, height: 30))
            
            Button {
                progressValue = 0
                withAnimation(Animation.linear(duration: 3)) {
                    progressValue = 1      // half completed
                }
                
            } label: {
                Text("Start Charging")
            }
            .buttonStyle(.bordered)
        }
        .padding()
        
        
    }
}

struct myProgressViewStyle: ProgressViewStyle {
    var width: CGFloat = 300
    var height: CGFloat = 15
    
    func makeBody(configuration: Configuration) -> some View {
        VStack {
            configuration.label
                .foregroundStyle(.red)
            RoundedRectangle(cornerRadius: 5)
                .stroke(.red)
                .frame(width: width, height: height)
                .overlay(
                    
                    RoundedRectangle(cornerRadius: 5)
                        .fill(.green)
                        .frame(width: width * CGFloat(configuration.fractionCompleted!)),
                    
                    alignment: .leading
                )
//            configuration.currentValueLabel(
//                Label("New Battery Level", systemImage: "battery.0")
//            )
            

            Label("New Battery Level", systemImage: "battery.25")
                .foregroundStyle(.red)
            Label("New Battery Level", systemImage: "battery.50")
                .foregroundStyle(.orange)
            Label("New Battery Level", systemImage: "battery.75")
                .foregroundStyle(.green)
            Label("New Battery Level", systemImage: "battery.100")
        }
    }
    
    
}


#Preview {
    usingProgressView()
}
