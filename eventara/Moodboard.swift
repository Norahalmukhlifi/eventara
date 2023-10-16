//
//  Moodboard.swift
//  eventara
//
//  Created by Ghaliah Altoom on 01/04/1445 AH.
//

import SwiftUI
import PhotosUI

struct Moodboard: View {
    @State private var selectedItem: PhotosPickerItem?
  @State private var selectedPhotoData: Image?
    @State private var selected = 0

    //@binding var arrayImages: [Images]
    var body: some View {
        
       
        
//        if let selectedPhotoData,
//        let image = UIImage(data: selectedPhotoData) {
//
//        Image(uiImage: image)
//            .resizable()
//            .scaledToFill()
//            .clipped()
//        }
        VStack{
            Spacer(minLength: 100)
            if let selectedPhotoData {
                GeometryReader { proxy in
                    selectedPhotoData
                        .resizable()
                        .frame(width: 300, height: 400)
                        .scaledToFit()
                        .clipShape(Rectangle())
                        .modifier(ImageModifier(contentSize: CGSize(width: proxy.size.width, height: proxy.size.height)))
                }
            }
            if(selected != 0){
                Divider()
            }
            PinCode()
        }
        
      
        VStack{
            
            
//                if let selectedPhotoData {
//
//                    selectedPhotoData
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 300, height: 300)
//                       }
                
                
                HStack (spacing: 50) {
                    
                
                    Button(action: {
                    }) {
                        VStack{
                            PhotosPicker(selection: $selectedItem, matching: .any(of: [.images, .not(.livePhotos)])) {
                                VStack{
                                    
                                    Image(systemName: "photo.on.rectangle.angled")
                                        .font(.system(size: 30))
                                        .accentColor(.pk)
                                    Text("صوره")
                                        .accentColor(.pk)
                                    
                                }
                            }
                        }
                    }
                    
                    
                    
                    Button(action: {
                      
                    }) {
                        VStack{
                            Image(systemName: "pencil.tip")
                                .font(.system(size: 30))
                                .accentColor(.pk)
                            Text("شخبط")
                                .accentColor(.pk)
                        }
                    }
                    
                    
                }
                
            }
        
            .onChange(of: selectedItem) { _ in
                        Task {
                            if let data = try? await selectedItem?.loadTransferable(type: Data.self) {
                                if let uiImage = UIImage(data: data) {
                                    selectedPhotoData = Image(uiImage: uiImage)
                                    
                                    //array.append(selectedPhotoData)
                                    return
                                }
                            }

                            print("Failed")
                        }
                    }
        }
        
    }

#Preview {
    Moodboard()
}
