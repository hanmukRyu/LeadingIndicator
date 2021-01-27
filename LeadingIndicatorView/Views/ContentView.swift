//
//  ContentView.swift
//  LeadingIndicatorView
//
//  Created by 유한묵 on 2021/01/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            ModalView()
            LeadingIndicatorList()
                .padding(30)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
