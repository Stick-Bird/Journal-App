//
//  ContentModel.swift
//  Journal App
//
//  Created by user on 2023-09-30.
//

import Foundation
import SwiftUI

class  ContentModel: ObservableObject {
    
    @Published var galleryItems = [GalleryItem]()
    @Published var item = GalleryItem()
    
    
}
