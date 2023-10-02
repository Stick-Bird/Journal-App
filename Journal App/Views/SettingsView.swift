//
//  SettingView.swift
//  Journal App
//
//  Created by user on 2023-09-28.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var vibrateOnRing = true
    
    var body: some View {
        
        Toggle("Private Mode", isOn: $vibrateOnRing)
            .padding()
        
    }
}



