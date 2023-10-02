//
//  JournalView.swift
//  Journal App
//
//  Created by user on 2023-09-29.
//

import SwiftUI

struct JournalView: View {
    
    
    @EnvironmentObject var model: ContentModel
    @State var photoSheetVisible = false
    @State var entryViewSheetVisible = false
    @State var selectedPhoto = " "
    @State var input : String
   

    
    var body: some View {
        
        VStack (alignment: .leading) {
            
            Text ("Journal")
                .font(.largeTitle)
                .bold()
                .padding()
            
            Spacer()
            
            GeometryReader {proxy in
                
                ScrollView(showsIndicators: false) {
                    
                    LazyVGrid(columns: [GridItem (spacing: 10),
                                        GridItem(spacing: 10),
                                        GridItem(spacing: 10)  ], spacing: 10 ){
                        
                        ForEach (model.galleryItems) {i in
                            
                            VStack {
                                
                                Image(i.photo ?? "")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(maxWidth: (proxy.size.width - 20) / 3)
                                    .clipped()
                                    .onTapGesture {
                                        selectedPhoto = i.photo ?? ""
                                        photoSheetVisible = true
                                    }
                                    .padding()
                                
                                Text (i.input ?? " ")
                                    .foregroundColor(.black)
                                    .font(.body)
                                    .bold()
                                    .padding(.top)
                                
                            }//End of VStack
                        }// End of ForEach
                        
                    } //End of LazyGrid
                } // end of Scoll View
                
                
            }// End of Geometry View
            
            Spacer()
            
            HStack {
                
                Spacer()
                
                Text ("New Entry")
                    .foregroundColor(.blue)
                    .bold()
                    .padding()
                    .onTapGesture {
                        entryViewSheetVisible = true
                        input = " "
                        
                    }.sheet(isPresented: $entryViewSheetVisible) {
                        NewEntryView( entrySheetVisible: $entryViewSheetVisible, input: $input)
                    }
                
                Spacer()
            }
            
            Spacer()
        }
        .sheet(isPresented: $photoSheetVisible) {
            PhotoView(selectedPhoto: $selectedPhoto, sheetVisible: $photoSheetVisible)
        }
        
        
    }
}

