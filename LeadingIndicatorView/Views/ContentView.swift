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
                .background(Color("backgroundColor"))
            LeadingIndicatorList()
                .frame(width: 300, height: 20)
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
