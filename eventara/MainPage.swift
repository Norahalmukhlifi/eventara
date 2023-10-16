//
//  ContentView.swift
//  eventara
//
//  Created by NorahAlmukhlifi on 25/03/1445 AH.
//

import SwiftUI

struct MainPage: View {
    @State var didtap = false
    var body: some View {
        NavigationStack{
            ZStack{  Color.back
                    .ignoresSafeArea()
                ScrollView{
                    
                    Form{
                        
                    }
        .navigationTitle("مناساباتي")
        .navigationBarTitleDisplayMode(.inline)
    .navigationBarItems(trailing:
    NavigationLink(destination: FormPage(), label: {
    Image(systemName: "plus")})
        .accentColor(.pk)
                                        
            .bold()
                    )
                   
                        VStack{
                        
                            NavigationLink {
                               ListTask()
                                    .accentColor(.pk)
                            } label: {
                                
                                ZStack{
                                    
                                    
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill( LinearGradient (
                                            gradient: Gradient(colors: [Color.card, Color.pk]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                                    
                                    
                                    VStack(alignment: .trailing){
                                        
                                        Text("حفلة تخرج")
                                            .font(.title2)
                                            .bold()
                                            .foregroundColor(.white)
                                            .multilineTextAlignment(.trailing)
                                            .frame(maxWidth: .infinity , alignment: .trailing)
                                        
                                        HStack{
                                            
                                            Text("25 Oct 2023")
                                                .foregroundColor(.white)
                                            Image(systemName:"calendar.badge.clock" )
                                                .foregroundColor(.white)
                                        }
                                        
                                        
                                        Text("المشاركين بالتخطيط")
                                            .font(.title3)
                                            .foregroundColor(.white)
                                            .multilineTextAlignment(.trailing)
                                            .frame(maxWidth: .infinity , alignment: .trailing)
                                        
                                        
                                        VStack(alignment: .leading, spacing: 20.0){
                                            Divider().frame(height: 4)}
                                        HStack{
                                            Image(systemName: "chevron.left")
                                                .padding(.trailing,180)
                                            
                                                .foregroundColor(.white)
                                                .bold()
                                            
                                            Image("fi")
                                            
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                            
                                        }
                                        
                                        
                                        
                                    }                                    .padding(.trailing ,20)
                                    
                                } }
                             
                        
                        .frame(width: 350, height: 200)
                            
                           
                            NavigationLink {
                               ListTask()
                                    .accentColor(.pk)
                            } label: {
                             
                                ZStack{
                                    
                                    
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill( LinearGradient (
                                            gradient: Gradient(colors: [Color.card, Color.pk]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                                    
                                    
                                    VStack(alignment: .trailing){
                                        Text("عيد ميلاد")
                                            .font(.title2)
                                            .bold()
                                            .foregroundColor(.white)
                                            .multilineTextAlignment(.trailing)
                                            .frame(maxWidth: .infinity , alignment: .trailing)
                                        
                                        HStack{
                                            
                                            Text("6 sep 2023")
                                                .foregroundColor(.white)
                                            Image(systemName:"calendar.badge.clock" )
                                                .foregroundColor(.white)
                                        }
                                        
                                        Text("المشاركين بالتخطيط")
                                            .font(.title3)
                                            .foregroundColor(.white)
                                            .multilineTextAlignment(.trailing)
                                            .frame(maxWidth: .infinity , alignment: .trailing)
                                        
                                        VStack(alignment: .leading, spacing: 20.0){
                                            Divider().frame(height: 4)}
                                        HStack{
                                            Image(systemName: "chevron.left")
                                                .padding(.trailing,180)
                                            
                                                .foregroundColor(.white)
                                                .bold()
                                            
                                            Image("fi")
                                            
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                                            
                                        }
                                        
                                        
                                        
                                        
                                    }                                    .padding(.trailing ,20)
                                    
                                } }
                                
                            
                        .frame(width: 350, height: 200)
                    }

                    
                }

                
            }
        }
        
        
    }
    
}
    

    #Preview {
        NavigationStack{
           MainPage()
        
        }
    }

