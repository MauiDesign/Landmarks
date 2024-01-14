//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Aroha Design on 14/01/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks, id: \.id) {
            landmark in LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
