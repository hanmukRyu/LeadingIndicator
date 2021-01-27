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
        HStack {
            Text(purpose)
                .frame(width: 80, alignment: .leading)
                .font(.subheadline)
                .foregroundColor(.white)
            Spacer()
            ProgressBarView(actualProgress: self.actualProgress,
                            plannedProgress: self.plannedProgress)
        }
        .background(Color("cardColor"))
    }
}


struct LeadingIndicator_Previews: PreviewProvider {
    static var previews: some View {
        LeadingIndicator(actualProgress: 0.5, plannedProgress: 0.3, purpose: "Swift")
    }
}
