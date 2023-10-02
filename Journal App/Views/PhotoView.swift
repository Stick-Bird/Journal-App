//
//  PhotoVIew.swift
//  Journal App
//
//  Created by user on 2023-09-29.
//

import SwiftUI

struct PhotoView: View {
    
    @Binding var selectedPhoto : String
    @Binding var sheetVisible : Bool
    
    var body: some View {
        
            
            Image(selectedPhoto)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
    }
}


