//
//  ModalView.swift
//  LeadingIndicatorView
//
//  Created by 유한묵 on 2021/01/26.
//

import SwiftUI

struct ModalView: View {
    let radius: CGFloat = 25.0
    var body: some View {
        RoundedRectangle(cornerRadius: radius)
            .padding()
            .foregroundColor(Color("cardColor"))
            .ignoresSafeArea()
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
