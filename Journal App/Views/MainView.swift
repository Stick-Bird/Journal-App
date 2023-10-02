//
//  ContentView.swift
//  Journal App
//
//  Created by user on 2023-09-28.
//

import SwiftUI

struct MainView: View {
    
    @EnvironmentObject var model: ContentModel
    
    
    var body: some View {
        
        TabView {
            
            JournalView(input: " ")
                .tabItem {
                    
                    VStack {
                        Image(systemName: "book.fill")
                        Text ("Journal")
                    }
                
            }
            
            SettingsView()
                .tabItem {
                    VStack {
                        Image(systemName: "gear")
                        Text ("Settings")
                    }
                    
                }
            
        }
        
        
    }
}

