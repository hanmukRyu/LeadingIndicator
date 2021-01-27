//
//  ProgressBarView.swift
//  LeadingIndicatorView
//
//  Created by 유한묵 on 2021/01/26.
//

import SwiftUI

//struct ProgressBarView: View {
//    let height: CGFloat = 20.0
//    let radius: CGFloat = 45.0
//    private(set) var actualProgress: Float
//    private(set) var plannedProgress: Float
//
//    var body: some View {
//        GeometryReader { geometry in
//            ZStack(alignment: .leading) {
//                Rectangle()
//                    .frame(width: geometry.size.width)
//                    .foregroundColor(.white)
//                Rectangle()
//                    .frame(width: min(CGFloat(self.plannedProgress)*geometry.size.width, geometry.size.width))
//                    .foregroundColor(.red)
//                    .opacity(0.5)
//                Rectangle()
//                    .frame(width: min(CGFloat(self.actualProgress)*geometry.size.width, geometry.size.width))
//                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
//            }
//        }
//        .cornerRadius(radius)
//        .frame(height: height)
//    }
//}


struct ProgressBarView: View {
    private(set) var actualProgress: Float
    private(set) var plannedProgress: Float = 0.5
    
    var body: some View {
        ZStack {
            ProgressView(value: self.plannedProgress)
                .accentColor(.white)
                .opacity(0.5)

            ProgressView(value: self.actualProgress)
        }
    }    
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView(actualProgress: 0.4)
    }
}

