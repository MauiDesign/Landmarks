//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Aroha Design on 31/01/24.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData
    @State private var showingProfile = false

    
    var body: some View {
        NavigationSplitView {
            List {
                //modelData.features[0].image
                    //.resizable()
                    //.scaledToFill()
                    //.frame(height: 200)
                    //.clipped()
                    //.listRowInsets(EdgeInsets())
                PageView(pages: modelData.features.map { FeatureCard(landmark: $0) })
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .listStyle(.inset)
            .navigationTitle("Feature")
            .toolbar {
                Button {
                    showingProfile.toggle()
                } label: {
                    Label("User Profile", systemImage: "person.crop.circle")
                }
            }
            .sheet(isPresented: $showingProfile) {
                ProfileHost()
                    .environment(modelData)
            }
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
        .environment(ModelData())
}
