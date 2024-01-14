//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by Aroha Design on 14/01/24.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark


    var body: some View {
        HStack {
            Text(landmark.name)
        }
    }
}


#Preview {
    LandmarkRow(landmark: landmarks[0])
}
