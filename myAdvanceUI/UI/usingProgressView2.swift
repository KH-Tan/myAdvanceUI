//
//  usingProgressView2.swift
//  myAdvanceUI
//
//  Created by Kong Hwi Tan on 2/5/24.
//

import SwiftUI

struct usingProgressView2: View {
    @State private var isLoading = false
    @State private var progress = 0.0
    
    
    var body: some View {
        
        VStack {
            Text("Hello, World!")
            Divider()

            Spacer()
            
            ProgressView(value: 30, total: 100)
            
            Spacer()
            
            
            
            ProgressView(value: progress) {
                Text("Loading...")
                    .foregroundStyle(.blue)
                    .font(.title)
            } currentValueLabel: {
                //Text("30%")
                Text(progress.formatted(.percent.precision(.fractionLength(0))))
                    .foregroundStyle(.red)
                    .font(.title3)
            }
            .tint(.orange)
            //.progressViewStyle(.linear)
            //.scaleEffect(1)
            
 
            Button {
                progress = 0
                withAnimation(Animation.linear(duration: 3)) {
                    progress = 1      // 0.5 half completed  / 1 fully completed
                }
                
            } label: {
                Text("Start Charging")
            }
            .buttonStyle(.bordered)
            
            
            
            Spacer()
            
            if isLoading {
                ProgressView() {
                    Text("Loading.....")
                        .bold()
                        .foregroundStyle(.blue)
                }
                //.progressViewStyle(.circular)     // default
                .tint(.red)
                .scaleEffect(2)
            }
            
            Spacer()
        }
        .padding()
        .onAppear {
            startFakeNetworkCall()
        }

        
    }
    
    
    func startFakeNetworkCall() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            isLoading = false
        }
    }

    
}





#Preview {
    usingProgressView2()
}
