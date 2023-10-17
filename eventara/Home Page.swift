//
//  Home Page.swift
//  eventara
//
//  Created by NorahAlmukhlifi on 02/04/1445 AH.
//

import SwiftUI

struct Home_Page: View {
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
            .bold())
                   
        NavigationLink {
        ListTask()
        .accentColor(.pk)
        } label: {
                             
                               
                  
                                    
        }
        }
        Text("أبدا التخطيط لمناسبتك")
                    .font(.title3)
                    .foregroundColor(.gray)
                
        
    }
    
}
    }
}

#Preview {
    Home_Page()
}
