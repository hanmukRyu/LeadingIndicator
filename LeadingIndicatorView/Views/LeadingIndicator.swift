//
//  LeadingIndicator.swift
//  LeadingIndicatorView
//
//  Created by 유한묵 on 2021/01/26.
//

import SwiftUI

struct LeadingIndicator: View {
    let actualProgress: Float
    let plannedProgress: Float
    let purpose: String
    
    var body: some View {
        let progressInPercent = String(round(self.actualProgress * 100)) + "%"
        
        VStack(alignment: .leading, spacing: 1) {
            HStack {
                
                Text("").frame(width: 100)
                Text(progressInPercent)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .font(.subheadline)
                    .bold()
            }
            
            HStack {
                Text(purpose)
                    .frame(width: 100, alignment: .leading)
                    .font(.headline)
                    .foregroundColor(.white)
                Spacer()
                ProgressBarView(actualProgress: self.actualProgress,
                                plannedProgress: self.plannedProgress)
            }
        }
        .background(Color("cardColor"))
    }
}

struct LeadingIndicator_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LeadingIndicator(actualProgress: 0.5, plannedProgress: 0.3, purpose: "Swift")
            ProgressView(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                .padding()
            ProgressView(value: 0.2)
        }
    }
}
