//
//  usingProgressView3.swift
//  myAdvanceUI
//
//  Created by Kong Hwi Tan on 3/5/24.
//

import SwiftUI

struct usingProgressView3: View {

    
    @State private var progress = 0.1
 
    var body: some View {
        ProgressView(value: progress,
                     label: { Text("Processing...") },
                     currentValueLabel: { Text(progress.formatted(.percent.precision(.fractionLength(0)))) })
        .progressViewStyle(.circular)
        //.progressViewStyle(BarProgressStyle(height: 100))
            .padding(50)
            .task {
                Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
 
                    self.progress += 0.1
 
                    if self.progress > 1.0 {
                        self.progress = 0.0
                    }
                }
            }
    }
    
    
    
}





struct BarProgressStyle: ProgressViewStyle {
 
    var color: Color = .purple
    var height: Double = 20.0
    var labelFontStyle: Font = .body
 
    func makeBody(configuration: Configuration) -> some View {
 
        let progress = configuration.fractionCompleted ?? 0.0
 
        GeometryReader { geometry in
 
            VStack(alignment: .leading) {
 
                configuration.label
                    .font(labelFontStyle)
 
                RoundedRectangle(cornerRadius: 10.0)
                    .fill(Color(uiColor: .systemGray5))
                    .frame(height: height)
                    .frame(width: geometry.size.width)
                    .overlay(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 10.0)
                            .fill(color)
                            .frame(width: geometry.size.width * progress)
                            .overlay {
                                if let currentValueLabel = configuration.currentValueLabel {
 
                                    currentValueLabel
                                        .font(.headline)
                                        .foregroundColor(.white)
                                }
                            }
                    }
 
            }
 
        }
    }
}

#Preview {
    usingProgressView3()
}
