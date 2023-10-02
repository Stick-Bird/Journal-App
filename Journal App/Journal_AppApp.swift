//
//  Journal_AppApp.swift
//  Journal App
//
//  Created by user on 2023-09-28.
//

import SwiftUI

@main
struct Journal_AppApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(ContentModel())
        }
    }
}
