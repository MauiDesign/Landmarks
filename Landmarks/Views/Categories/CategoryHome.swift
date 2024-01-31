//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Aroha Design on 31/01/24.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationSplitView {
            Text("Hello World!")
                .navigationTitle("Feature")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
}
