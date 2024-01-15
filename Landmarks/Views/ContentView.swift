//
//  ContentView.swift
//  Landmarks
//
//  Created by Aroha Design on 14/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView().environment(ModelData())
}
