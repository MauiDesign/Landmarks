//
//  PageView.swift
//  Landmarks
//
//  Created by Aroha Design on 12/03/24.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]


    var body: some View {
        PageViewController(pages: pages, currentPage: <#Binding<Int>#>)
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}


#Preview {
    PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
}
