//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Aroha Design on 14/01/24.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = true // Display favorite state
    
    var filteredLandMarks: [Landmark] {
        landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite) // Filter Favorite landmarks
        }
    }
    var body: some View {
        NavigationSplitView{
            // Enable Filtered favorite landmarks
            List(filteredLandMarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
