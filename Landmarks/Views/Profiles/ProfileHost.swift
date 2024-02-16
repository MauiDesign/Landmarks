//
//  ProfileHost.swift
//  Landmarks
//
//  Created by Aroha Design on 17/02/24.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    
    var body: some View {
        Text("Profile for: \(draftProfile.username)")
    }
}

#Preview {
    ProfileHost()
}
