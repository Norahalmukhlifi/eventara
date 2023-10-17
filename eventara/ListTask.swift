//
//  ListTask.swift
//  eventara
//
//  Created by NorahAlmukhlifi on 27/03/1445 AH.
//

import SwiftUI

struct ListTask: View {
    @State var txt = ""
    var body: some View {
        NavigationStack{
          
            ZStack{
                Color.back
                    .ignoresSafeArea()
                
                VStack{
                    HStack(spacing : 15){
                        Image (systemName: "magnifyingglass")
                           .foregroundColor(.gray)
                        TextField("searsh",text: $txt)
                    } .padding(.vertical,12)
                       .padding(.horizontal)
                        .background(Color.white)
                       .clipShape(Capsule())
                   
                        .padding()
                    
                    VStack{
                        NavigationLink {
                            Moodboard()
                        } label: {
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 25)
                                    .fill( LinearGradient (
                                        gradient: Gradient(colors: [Color.card, Color.pk]), startPoint: .leading, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                                
                                VStack(alignment: .trailing){
                                    Text("حفلة التخرج")
                                        .font(.title2)
                                        .bold()
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.trailing)
                                        .frame(maxWidth: .infinity , alignment: .trailing)
                                    
                                    Text("المشاركين بالتخطيط")
                                        .font(.title3)
                                        .foregroundColor(.white)
                                        .multilineTextAlignment(.trailing)
                                        .frame(maxWidth: .infinity , alignment: .trailing)
                                    
                                    
                                    HStack{
                                        
                                        Text("25 Oct 2023")
                                            .foregroundColor(.white)
                                        Image(systemName:"calendar.badge.clock" )
                                        .foregroundColor(.white)}
                                    Divider().frame(height: 4)
                                    
                                    HStack{
                                        Image(systemName: "chevron.left")
                                        
                                            .foregroundColor(.white)
                                            .bold()
                                        
                                        Image("fi")
                                        
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                        
                                    }
                                    
                                    
                                    
                                }                             .padding(.trailing ,20)
                                
                            }
                            .frame(width: 350, height: 200)}
                    TodoList()
                    }
                }
                        
                        
                 }
                
            
                
                .navigationTitle("حفلة التخرج")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarItems(trailing:
                                        NavigationLink(destination:                             Moodboard()
, label: {Image(systemName: "square.and.arrow.down")})
                    .accentColor(.pk))
          
            }
     
            
        }
    }

#Preview {
    ListTask()
}
