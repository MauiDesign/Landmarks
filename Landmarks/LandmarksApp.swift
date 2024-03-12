//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Aroha Design on 14/01/24.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
