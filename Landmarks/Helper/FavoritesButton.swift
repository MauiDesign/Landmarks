//
//  FavoritesButton.swift
//  Landmarks
//
//  Created by Aroha Design on 15/01/24.
//

import SwiftUI

struct FavoritesButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill": "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow: .gray)
        }
    }
}

#Preview {
    FavoritesButton(isSet: .constant(true))
}
