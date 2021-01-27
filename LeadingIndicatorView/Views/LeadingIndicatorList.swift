//
//  LeadingIndicatorList.swift
//  LeadingIndicatorView
//
//  Created by 유한묵 on 2021/01/26.
//

import SwiftUI

struct LeadingIndicatorList: View {
    var modelData = ModelData()
    var body: some View {
        VStack {
            ForEach(modelData.leadingIndicators, id: \.target) { data in
                LeadingIndicator(actualProgress: data.actualProgress,
                                 plannedProgress: data.plannedProgress,
                                 purpose: data.target)
            }
        }
    }
}

struct LeadingIndicatorList_Previews: PreviewProvider {
    static var previews: some View {
        LeadingIndicatorList()
    }
}
